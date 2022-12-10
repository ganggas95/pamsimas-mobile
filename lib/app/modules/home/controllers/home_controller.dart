import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pamsimas/app/modules/create_invoice/views/create_invoice_view.dart';
import 'package:pamsimas/app/modules/create_invoice/bindings/create_invoice_binding.dart';
import 'package:pamsimas/app/modules/home/bindings/home_binding.dart';
import 'package:pamsimas/app/modules/home/views/home_main_view.dart';
import 'package:pamsimas/app/modules/member/bindings/member_binding.dart';
import 'package:pamsimas/app/modules/member/views/member_view.dart';
import 'package:pamsimas/app/modules/profile/bindings/profile_binding.dart';
import 'package:pamsimas/app/modules/profile/views/profile_view.dart';
import 'package:pamsimas/app/modules/report/views/report_view.dart';
import 'package:pamsimas/app/modules/report/bindings/report_binding.dart';
import 'package:pamsimas/app/routes/app_pages.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  var currentIndex = 0.obs;
  final pages = <String>[
    Routes.HOME,
    Routes.REPORT,
    Routes.CREATE_INVOICE,
    Routes.MEMBER,
    Routes.PROFILE
  ];

  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index]);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == Routes.HOME) {
      return GetPageRoute(
        settings: settings,
        page: () => const HomeMainView(),
        binding: HomeBinding(),
      );
    }

    if (settings.name == Routes.REPORT) {
      return GetPageRoute(
        settings: settings,
        page: () => const ReportView(),
        binding: ReportBinding(),
      );
    }

    if (settings.name == Routes.CREATE_INVOICE) {
      return GetPageRoute(
        settings: settings,
        page: () => const CreateInvoiceView(),
        binding: CreateInvoiceBinding(),
      );
    }
    if (settings.name == Routes.MEMBER) {
      return GetPageRoute(
        settings: settings,
        page: () => const MemberView(),
        binding: MemberBinding(),
      );
    }

    if (settings.name == Routes.PROFILE) {
      return GetPageRoute(
        settings: settings,
        page: () => const ProfileView(),
        binding: ProfileBinding(),
      );
    }
    return null;
  }
}
