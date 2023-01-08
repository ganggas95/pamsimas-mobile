import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_invoice_controller.dart';

class CreateInvoiceView extends GetView<CreateInvoiceController> {
  const CreateInvoiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buat Tagihan'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(children: [
          Container(
              width: Get.width,
              height: 45,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor),
                  child: const Text("Pilih pelanggan"))),
          const SizedBox(
            height: 10,
          )
        ]),
      )),
    );
  }
}
