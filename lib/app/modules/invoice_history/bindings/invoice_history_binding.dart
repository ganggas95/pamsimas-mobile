import 'package:get/get.dart';

import '../controllers/invoice_history_controller.dart';

class InvoiceHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InvoiceHistoryController>(
      () => InvoiceHistoryController(),
    );
  }
}
