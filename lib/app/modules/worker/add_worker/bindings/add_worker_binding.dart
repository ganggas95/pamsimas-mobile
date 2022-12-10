import 'package:get/get.dart';

import '../controllers/add_worker_controller.dart';

class AddWorkerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddWorkerController>(
      () => AddWorkerController(),
    );
  }
}
