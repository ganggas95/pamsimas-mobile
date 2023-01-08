import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pamsimas/app/controllers/auth_controller.dart';
import 'package:pamsimas/app/routes/app_pages.dart';

class AuthenticatedGuard extends GetMiddleware {
  final authController = Get.find<AuthController>();
  @override
  RouteSettings? redirect(String? route) {
    return authController.isAuth.value
        ? const RouteSettings(name: Routes.LOGIN)
        : RouteSettings(name: route ?? Routes.DASHBOARD);
  }
}
