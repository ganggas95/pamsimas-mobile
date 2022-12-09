import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:pamsimas/app/routes/app_pages.dart';
import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Memudahkan Petugas Pamsimas",
            body: "Memudahkan petugas dalam memantau dan mencatat penggunaan air",
            image: Center(
              child: Container(
                width: Get.width * 0.8,
                height: Get.width * 0.8,
                child: Lottie.asset("assets/lottie/Worker.json"),
              ),
            ),
          ),
          PageViewModel(
            title: "Memudahkan Pengguna Air",
            body: "Memudahkan pengguna air dalam memantau beban dan penghabisan air",
            image: Center(
              child: Container(
                width: Get.width * 0.8,
                height: Get.width * 0.8,
                child: Lottie.asset("assets/lottie/Member.json"),
              ),
            ),
          ),
          PageViewModel(
            title: "Menghubungkan Pengguna dan Petugas",
            body: "Setiap ada masalah dalam saluran air dan meter air, dapat di laporkan dengan mudah",
            image: Center(
              child: Container(
                width: Get.width * 0.8,
                height: Get.width * 0.8,
                child: Lottie.asset("assets/lottie/CS.json"),
              ),
            ),
          )
        ],
        showSkipButton: true,
        skip: const Text("Lewati"),
        next: const Text("Lanjut"),
        done: const Text("Login", style: TextStyle(fontWeight: FontWeight.w700)),
        onDone: () => Get.offAllNamed(Routes.LOGIN),
      ),
    );
  }
}
