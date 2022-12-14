import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/invoice_history_controller.dart';

class InvoiceHistoryView extends GetView<InvoiceHistoryController> {
  const InvoiceHistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InvoiceHistoryView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'InvoiceHistoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
