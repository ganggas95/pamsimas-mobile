import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pamsimas/app/controllers/auth_controller.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final _authController = Get.find<AuthController>();
  ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(children: [
              ElevatedButton(
                  onPressed: _authController.logout, child: const Text("Logout"))
            ]),
          )),
    );
  }
}
