import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController
  Route? generateRoute(){
    if(currentIndex == 0) {
      return GetPageRoute(
        binding: HomeBin
      )
    }
    return null;
  }
  var currentIndex = 0.obs;
  void changePage(int index) {
    currentIndex.value = index;
  }
}
