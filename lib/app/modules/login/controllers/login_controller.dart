import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pamsimas/app/controllers/auth_controller.dart';
import 'package:pamsimas/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Map<String, String?> errors = {
    "email": null,
    "password": null,
    "all": null,
  };

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> handleSignIn() async {
    final authController = Get.find<AuthController>();
    try {
      await authController.login(
          email: emailController.value.text,
          password: passwordController.value.text);
      errors['password'] = null;
      errors['email'] = null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        errors['email'] = 'Email anda belum terdaftar';
      }
      if (e.code == 'invalid-email') {
        errors['email'] = 'Email yang anda masukkan salah';
      }
      if (e.code == 'wrong-password') {
        errors['password'] = 'Password salah, silahkan ulangi';
      }
      if (e.code == 'too-many-requests') {
        Get.showSnackbar(const GetSnackBar(title: 'Terlalu banyak percobaan login, silahkan ulangi beberapa saat lagi',));
      }
    } catch (e) {
      print(e);
    }
  }

  void goToSignUp() {
    Get.toNamed(Routes.SIGN_UP);
  }
}
