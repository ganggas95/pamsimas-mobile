import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pamsimas/app/modules/create_invoice/views/create_invoice_view.dart';
import 'package:pamsimas/app/modules/home/views/home_view.dart';
import 'package:pamsimas/app/modules/member/views/member_view.dart';
import 'package:pamsimas/app/modules/profile/views/profile_view.dart';
import 'package:pamsimas/app/modules/report/views/report_view.dart';

import '../../../routes/app_pages.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.currentIndex.value,
            children: const [
              HomeView(),
              ReportView(),
              CreateInvoiceView(),
              MemberView(),
              ProfileView(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changePage,
            selectedItemColor: Colors.white,
            currentIndex: controller.currentIndex.value,
            type: BottomNavigationBarType.fixed,
            
            items: [
              _bottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: "Home",
              ),
              _bottomNavigationBarItem(
                icon: const Icon(Icons.bar_chart),
                label: "Report",
              ),
              _bottomNavigationBarItem(
                icon: const Icon(Icons.electric_meter),
                label: "Buat Tagihan",
              ),
              _bottomNavigationBarItem(
                  icon: const Icon(Icons.groups), label: "Pelanggan"),
              _bottomNavigationBarItem(
                  icon: const Icon(Icons.person), label: "Profile"),
            ]),
      ),
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem(
      {required Icon icon, required String label}) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label,
      backgroundColor: const Color(0xff00aa59),
    );
  }
}
