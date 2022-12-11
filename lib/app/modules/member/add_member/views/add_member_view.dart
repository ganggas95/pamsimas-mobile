import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_member_controller.dart';

class AddMemberView extends GetView<AddMemberController> {
  const AddMemberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddMemberView'),
        centerTitle: false,
      ),
      body: const Center(
        child: Text(
          'AddMemberView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
