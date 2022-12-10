import 'package:get/get.dart';
import 'package:pamsimas/app/routes/app_pages.dart';

class HomeController extends GetxController {
//   Implement your controller here
  goToAddNew() {
    Get.toNamed(Routes.ADD_MEMBER);
  }
  goToAddNewWorker() {
    Get.toNamed(Routes.ADD_WORKER);
  }
}
