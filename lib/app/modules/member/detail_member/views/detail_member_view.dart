import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_member_controller.dart';

class DetailMemberView extends GetView<DetailMemberController> {
  const DetailMemberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailMemberView'),
        centerTitle: false,
      ),
      body: const Center(
        child: Text(
          'DetailMemberView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
