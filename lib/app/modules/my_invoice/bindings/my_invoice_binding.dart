import 'package:get/get.dart';

import '../controllers/my_invoice_controller.dart';

class MyInvoiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyInvoiceController>(
      () => MyInvoiceController(),
    );
  }
}
