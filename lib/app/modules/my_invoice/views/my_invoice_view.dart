import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_invoice_controller.dart';

class MyInvoiceView extends GetView<MyInvoiceController> {
  const MyInvoiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyInvoiceView'),
        centerTitle: false,
      ),
      body: const Center(
        child: Text(
          'MyInvoiceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
