import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: Get.width * 0.6,
                height: Get.width * 0.7,
                child: Lottie.asset("assets/lottie/login.json"),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "AKSES PAMSIMAS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Mukta",
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      "Masukkan informasi berikut untuk melanjutkan",
                      style: TextStyle(fontFamily: "Mukta"),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Email'),
                          hintText: "Masukkan email anda di sini!"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Password'),
                          hintText: "Masukkan password anda di sini!"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(Get.width, 48)),
                      child: const Text("Login"),
                    )
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
