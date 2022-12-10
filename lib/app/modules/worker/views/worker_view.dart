import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/worker_controller.dart';

class WorkerView extends GetView<WorkerController> {
  const WorkerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WorkerView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WorkerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
