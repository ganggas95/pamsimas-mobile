import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: SafeArea(
            child: Navigator(key: Get.key, initialRoute: Routes.HOME, onGenerateRoute: c,)),
        bottomNavigationBar: BottomNavigationBar(
            onTap: c.changePage,
            currentIndex: c.currentIndex.value,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
                backgroundColor: Color(0xff00aa59),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: "",
                backgroundColor: Color(0xff00aa59),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.electric_meter),
                label: "",
                backgroundColor: Color(0xff00aa59),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.groups),
                label: "",
                backgroundColor: Color(0xff00aa59),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "",
                backgroundColor: Color(0xff00aa59),
              ),
            ]),
      ),
    );
  }
}
