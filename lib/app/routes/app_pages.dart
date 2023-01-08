import 'package:get/get.dart';
import 'package:pamsimas/app/middleware/guest_middleware.dart';
// import 'package:pamsimas/app/middleware/auth_middleware.dart';
// import 'package:pamsimas/app/middleware/guest_middleware.dart';

import '../modules/complaint/bindings/complaint_binding.dart';
import '../modules/complaint/views/complaint_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/introduction/bindings/introduction_binding.dart';
import '../modules/introduction/views/introduction_view.dart';
import '../modules/inventory/bindings/inventory_binding.dart';
import '../modules/inventory/views/inventory_view.dart';
import '../modules/invoice_history/bindings/invoice_history_binding.dart';
import '../modules/invoice_history/views/invoice_history_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/member/add_member/bindings/add_member_binding.dart';
import '../modules/member/add_member/views/add_member_view.dart';
import '../modules/member/detail_member/bindings/detail_member_binding.dart';
import '../modules/member/detail_member/views/detail_member_view.dart';
import '../modules/my_invoice/bindings/my_invoice_binding.dart';
import '../modules/my_invoice/views/my_invoice_view.dart';
import '../modules/sign-up/bindings/sign_up_binding.dart';
import '../modules/sign-up/views/sign_up_view.dart';
import '../modules/worker/add_worker/bindings/add_worker_binding.dart';
import '../modules/worker/add_worker/views/add_worker_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
      middlewares: [],
    ),
    GetPage(
        name: _Paths.SIGN_UP,
        page: () => const SignUpView(),
        binding: SignUpBinding(),
        middlewares: []),
    GetPage(
        name: _Paths.INTRODUCTION,
        page: () => const IntroductionView(),
        binding: IntroductionBinding(),
        middlewares: []),
    GetPage(
        name: _Paths.DASHBOARD,
        page: () => const DashboardView(),
        binding: DashboardBinding(),
        middlewares: [
          // AuthenticatedGuard(),
        ]),
    GetPage(
        name: _Paths.ADD_MEMBER,
        page: () => const AddMemberView(),
        binding: AddMemberBinding(),
        middlewares: [
          // AuthenticatedGuard(),
        ]),
    // GetPage(
    //   name: _Paths.PROFILE,
    //   page: () => const ProfileView(),
    //   binding: ProfileBinding(),
    // ),
    // GetPage(
    //   name: _Paths.CREATE_INVOICE,
    //   page: () => const CreateInvoiceView(),
    //   binding: CreateInvoiceBinding(),
    // ),
    // GetPage(
    //   name: _Paths.REPORT,
    //   page: () => const ReportView(),
    //   binding: ReportBinding(),
    // ),
    GetPage(
        name: _Paths.MY_INVOICE,
        page: () => const MyInvoiceView(),
        binding: MyInvoiceBinding(),
        middlewares: [
          // AuthenticatedGuard(),
        ]),
    // GetPage(
    //   name: _Paths.WORKER,
    //   page: () => const WorkerView(),
    //   binding: WorkerBinding(),
    //   children: [

    //   ],
    // ),
    GetPage(
        name: _Paths.ADD_WORKER,
        page: () => const AddWorkerView(),
        binding: AddWorkerBinding(),
        middlewares: [
          // AuthenticatedGuard(),
        ]),
    GetPage(
        name: _Paths.COMPLAINT,
        page: () => const ComplaintView(),
        binding: ComplaintBinding(),
        middlewares: [
          // AuthenticatedGuard(),
        ]),
    GetPage(
        name: _Paths.INVENTORY,
        page: () => const InventoryView(),
        binding: InventoryBinding(),
        middlewares: [
          // AuthenticatedGuard(),
        ]),
    GetPage(
        name: _Paths.DETAIL_MEMBER,
        page: () => const DetailMemberView(),
        binding: DetailMemberBinding(),
        middlewares: [
          // AuthenticatedGuard(),
        ]),
    GetPage(
        name: _Paths.INVOICE_HISTORY,
        page: () => const InvoiceHistoryView(),
        binding: InvoiceHistoryBinding(),
        middlewares: [
          // AuthenticatedGuard(),
        ]),
  ];
}
