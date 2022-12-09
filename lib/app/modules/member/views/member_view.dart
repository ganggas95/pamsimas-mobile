import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/member_controller.dart';

class MemberView extends GetView<MemberController> {
  const MemberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MemberView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MemberView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
