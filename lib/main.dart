import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:pamsimas/app/controllers/auth_controller.dart';
import 'package:pamsimas/app/utils/error_screen.dart';
import 'package:pamsimas/app/utils/loading_screen.dart';
import 'package:pamsimas/app/utils/splash_screen.dart';
import 'package:pamsimas/firebase_options.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _firebase =
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final authController = Get.put(AuthController(), permanent: true);

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _firebase,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const ErrorScreen();
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return GetMaterialApp(
              title: "Application",
              initialRoute: Routes.LOGIN,
              getPages: AppPages.routes,
            );
            // return FutureBuilder(
            //     future: Future.delayed(const Duration(seconds: 5)),
            //     builder: (context, snapshot) {
            //       if (snapshot.connectionState == ConnectionState.done) {
            //         return Obx(() => GetMaterialApp(
            //             title: "Application",
            //             initialRoute: authController.isSkipIntro.isTrue
            //                 ? authController.isAuth.isTrue
            //                     ? Routes.HOME
            //                     : Routes.LOGIN
            //                 : Routes.INTRODUCTION,
            //             getPages: AppPages.routes,
            //           ),
            //         );
            //       }
            //       return const SplashScreen();
            //     });
          }
          return const LoadingScreen();
        });
  }
}
