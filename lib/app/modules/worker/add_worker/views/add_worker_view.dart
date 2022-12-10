import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_worker_controller.dart';

class AddWorkerView extends GetView<AddWorkerController> {
  const AddWorkerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddWorkerView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddWorkerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
