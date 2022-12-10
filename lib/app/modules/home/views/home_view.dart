import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pamsimas/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final HomeController c = Get.put(HomeController());
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: Routes.HOME,
        onGenerateRoute: c.onGenerateRoute,
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: c.changePage,
          currentIndex: c.currentIndex.value,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.electric_meter), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.groups), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ]),
    );
  }
}
