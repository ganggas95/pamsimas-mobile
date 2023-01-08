import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pamsimas/app/controllers/auth_controller.dart';
import 'package:pamsimas/app/routes/app_pages.dart';

class SignUpController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  Map<String, String?> errors = {
    "email": null,
    "password": null,
  };
  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  void goToSignIn() {
    Get.toNamed(Routes.LOGIN);
  }

  Future<void> handleSignUp() async {
    final authController = Get.find<AuthController>();
    try {
      await authController.signUp(
          email: emailController.value.text,
          password: passwordController.value.text);
      errors['password'] = null;
      errors['email'] = null;
      goToSignIn();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        errors['password'] = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        errors['email'] = 'The account already exists for that email.';
      }
    } catch (e) {
      print(e);
    }
  }
}
