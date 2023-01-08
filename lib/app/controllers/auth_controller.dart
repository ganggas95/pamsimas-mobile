import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pamsimas/app/routes/app_pages.dart';

class AuthController extends GetxController {
  var isSkipIntro = false.obs;
  var isAuth = false.obs;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<void> firstInitialization() async {
    _handleAutoLogin(FirebaseAuth.instance.currentUser);
    isSkipIntro.value = await _handleIntro();
  }

  Future<bool> _handleIntro() async {
    final box = GetStorage();
    print(box.read("skipIntro"));
    return box.read("skipIntro") != null && box.read("skipIntro") == true;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    _initializeFirebaseStateChange();
  }

  void _initializeFirebaseStateChange() {
    _handleAutoLogin(FirebaseAuth.instance.currentUser);
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      _handleAutoLogin(user);
    });
  }

  void _handleAutoLogin(User? user) {
    isAuth.value = user != null;
  }

  void _saveUserToFirestore({required UserCredential userCred}) {
    CollectionReference usersCol = firestore.collection("users");
    usersCol.doc(userCred.user?.email).set({
      "email": userCred.user?.email,
      "name": userCred.user?.displayName,
      "phone": userCred.user?.phoneNumber,
      "photo": userCred.user?.photoURL,
      "createdAt": userCred.user?.metadata.creationTime?.toIso8601String(),
      "lastLoginAt": userCred.user?.metadata.lastSignInTime?.toIso8601String(),
      "updatedAt": DateTime.now().toIso8601String(),
    });
  }

  Future<void> login({required String email, required String password}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
            email: email,
            password: password,
          )
          .then((UserCredential credential) =>
              {_saveUserToFirestore(userCred: credential)});
      _handleAfterLoginOrSignup();
      Get.offAndToNamed(Routes.DASHBOARD);
    } on FirebaseAuthException catch (e) {
      return Future.error(e);
    } catch (err) {
      print(err);
    }
  }

  void _handleAfterLoginOrSignup() {
    isAuth.value = true;
    final box = GetStorage();
    box.write("skipIntro", true);
  }

  Future signUp({required String email, required String password}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          )
          .then((UserCredential credential) =>
              {_saveUserToFirestore(userCred: credential)});
      _handleAfterLoginOrSignup();
      Get.toNamed(Routes.LOGIN);
    } on FirebaseAuthException catch (e) {
      return Future.error(e);
    } catch (err) {
      print(err);
    }
  }

  Future logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAndToNamed(Routes.LOGIN);
    } catch (error) {
      print(error);
    }
  }
}
