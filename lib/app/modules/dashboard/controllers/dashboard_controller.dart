import 'package:get/get.dart';

class DashboardController extends GetxController {
  final Map<String, int> _moduleParser = {
    "home": 0,
    "report": 1,
    "meter": 2,
    "member": 3,
    "profile": 4,
  };
  var currentIndex = 0.obs;
  void changePage(int index) {
    currentIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
    _initModule();
  }

  void _initModule() {
    if (Get.arguments != null) {
      String module = Get.arguments["module"];
      currentIndex.value =
          _moduleParser.containsKey(module) ? _moduleParser[module]! : 0;
    }
  }
}
