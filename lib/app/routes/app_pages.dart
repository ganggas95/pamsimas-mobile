import 'package:get/get.dart';

import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/member/add_member/bindings/add_member_binding.dart';
import '../modules/member/add_member/views/add_member_view.dart';
import '../modules/worker/add_worker/bindings/add_worker_binding.dart';
import '../modules/worker/add_worker/views/add_worker_view.dart';
import '../modules/worker/bindings/worker_binding.dart';
import '../modules/worker/views/worker_view.dart';

import '../modules/create_invoice/bindings/create_invoice_binding.dart';
import '../modules/create_invoice/views/create_invoice_view.dart';
import '../modules/introduction/bindings/introduction_binding.dart';
import '../modules/introduction/views/introduction_view.dart';
import '../modules/member/bindings/member_binding.dart';
import '../modules/member/views/member_view.dart';
import '../modules/my_invoice/bindings/my_invoice_binding.dart';
import '../modules/my_invoice/views/my_invoice_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/report/bindings/report_binding.dart';
import '../modules/report/views/report_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
        name: _Paths.MEMBER,
        page: () => const MemberView(),
        binding: MemberBinding(),
        children: [
          GetPage(
            name: _Paths.ADD_MEMBER,
            page: () => const AddMemberView(),
            binding: AddMemberBinding(),
          ),
        ]),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () => const IntroductionView(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_INVOICE,
      page: () => const CreateInvoiceView(),
      binding: CreateInvoiceBinding(),
    ),
    GetPage(
      name: _Paths.REPORT,
      page: () => const ReportView(),
      binding: ReportBinding(),
    ),
    GetPage(
      name: _Paths.MY_INVOICE,
      page: () => const MyInvoiceView(),
      binding: MyInvoiceBinding(),
    ),
    GetPage(
      name: _Paths.WORKER,
      page: () => const WorkerView(),
      binding: WorkerBinding(),
      children: [
        GetPage(
          name: _Paths.ADD_WORKER,
          page: () => const AddWorkerView(),
          binding: AddWorkerBinding(),
        ),
      ],
    ),
  ];
}
