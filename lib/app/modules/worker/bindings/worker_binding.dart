import 'package:get/get.dart';

import '../controllers/worker_controller.dart';

class WorkerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorkerController>(
      () => WorkerController(),
    );
  }
}
