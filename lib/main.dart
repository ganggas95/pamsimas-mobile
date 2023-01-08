import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pamsimas/app/controllers/auth_controller.dart';
import 'package:pamsimas/app/utils/error_screen.dart';
import 'package:pamsimas/app/utils/loading_screen.dart';
import 'package:pamsimas/app/utils/splash_screen.dart';
import 'package:pamsimas/firebase_options.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _firebase =
      Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _firebase,
        builder: (context, snapshot) {
          print(snapshot.connectionState == ConnectionState.done);
          if (snapshot.hasError) {
            return const ErrorScreen();
          }
          if (snapshot.connectionState == ConnectionState.done) {
            final authController = Get.put(AuthController(), permanent: true);
            return FutureBuilder(
                future: Future.delayed(const Duration(seconds: 5)),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Obx(() => GetMaterialApp(
                          title: "Application",
                          theme: _buildTheme(),
                          initialRoute: authController.isAuth.value
                              ? Routes.DASHBOARD
                              : authController.isSkipIntro.value
                                  ? Routes.LOGIN
                                  : Routes.INTRODUCTION,
                          getPages: AppPages.routes,
                        ));
                  }
                  return FutureBuilder(
                      future: authController.firstInitialization(),
                      builder: (context, snapshot) => const SplashScreen());
                });
          }
          return const LoadingScreen();
        });
  }

  ThemeData _buildTheme() {
    return ThemeData(
        brightness: Brightness.light,
        fontFamily: "Mukta",
        primaryColor: Colors.lightBlueAccent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.lightBlueAccent,
          centerTitle: false,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.lightBlueAccent,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.lightBlueAccent,
            selectedItemColor: Colors.black));
  }
}
