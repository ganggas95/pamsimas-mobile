import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_invoice_controller.dart';

class CreateInvoiceView extends GetView<CreateInvoiceController> {
  const CreateInvoiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateInvoiceView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CreateInvoiceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
