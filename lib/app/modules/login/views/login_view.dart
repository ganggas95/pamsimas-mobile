import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pamsimas/app/widgets/input_widget.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: Get.width * 0.8,
                height: Get.width * 0.8,
                child: Lottie.asset("assets/lottie/login.json"),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Masukkan informasi berikut untuk melanjutkan",
                      style: TextStyle(fontFamily: "Mukta"),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InputWidget(
                      controller: controller.emailController,
                      obscureText: false,
                      label: "Email",
                      errorText: controller.errors["email"],
                      hint: "Masukkan email anda di sini!",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InputWidget(
                      controller: controller.passwordController,
                      obscureText: true,
                      label: "Password",
                      errorText: controller.errors["password"],
                      hint: "Masukkan password anda di sini!",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: controller.handleSignIn,
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(Get.width, 48)),
                      child: const Text("Login"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Atau"),
                    const Text("Anda belum punya akun?"),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: controller.goToSignUp,
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(Get.width, 48)),
                      child: const Text("Daftar"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
