import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pamsimas/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      body: Center(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width,
              height: 136,
              color: Theme.of(context).primaryColor,
              child: const YourStatistic(),
            ),
            const YourStatisticWidget(),
            const SizedBox(
              height: 20,
            ),
            MenuWidget(),
          ],
        )),
      ),
    );
  }
}

class YourStatistic extends StatelessWidget {
  const YourStatistic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.max,
            children: const [
              Text(
                "Selamat Datang, Nizar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "Statistik Anda",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}

class YourStatisticWidget extends StatelessWidget {
  const YourStatisticWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: Get.width,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
            color: Theme.of(context).primaryColor,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: Get.width * 0.9,
            height: 88,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50.0))),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: const [
                              Text("80",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w800)),
                              Text("%",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400))
                            ]),
                      ),
                    ),
                    const SizedBox(
                      width: 22,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Progress mingguan anda",
                            style: TextStyle(
                                color: Color(0xFF1E1E1E),
                                fontSize: 16,
                                fontWeight: FontWeight.w700)),
                        Text(
                          "Update terakhir - 16 Sept 2023",
                          style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    )
                  ]),
            ),
          ),
        )
      ],
    );
  }
}

class MenuWidget extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());
  MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("Pintasan & Menu Lainnya",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
          ),
          GridView.count(
            crossAxisCount: 3,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            primary: isBlank,
            childAspectRatio: 1,
            mainAxisSpacing: 20,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0.0),
            children: [
              _buildMenuItem(
                  context: context,
                  icon: Icons.water,
                  onTap: () => Get.toNamed(Routes.ADD_MEMBER),
                  label: "Pasang Baru"),
              _buildMenuItem(
                  context: context,
                  icon: Icons.group_add,
                  onTap: () => Get.toNamed(Routes.ADD_WORKER),
                  label: "Petugas Baru"),
              _buildMenuItem(
                  context: context,
                  icon: Icons.sd_card_alert,
                  onTap: () => Get.toNamed(Routes.COMPLAINT),
                  label: "Data Pengaduan"),
              _buildMenuItem(
                  context: context,
                  icon: Icons.tune_outlined,
                  onTap: () => Get.toNamed(Routes.INVENTORY),
                  label: "Inventory"),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMenuItem(
      {required BuildContext context,
      required IconData icon,
      required Function onTap,
      required String label}) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        children: <Widget>[
          Container(
            width: Get.width * 0.7 / 3,
            height: Get.width * 0.7 / 3,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(24.0))),
            child: Icon(icon, color: Colors.white, size: 36),
          ),
          Text(label,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
        ],
      ),
    );
  }
}
