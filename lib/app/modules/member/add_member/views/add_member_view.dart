import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pamsimas/app/constants/dashboard_const.dart';
import 'package:pamsimas/app/modules/member/views/member_form_view.dart';
import 'package:pamsimas/app/routes/app_pages.dart';

import '../controllers/add_member_controller.dart';

class AddMemberView extends GetView<AddMemberController> {
  const AddMemberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tambah Pelanggan'),
          centerTitle: false,
          shadowColor: Theme.of(context).primaryColor,
          elevation: 0,
          actions: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                child: const Text("Simpan"),
                onTap: () => Get.toNamed(Routes.DASHBOARD,
                    arguments: {"module": DashboardModules.MEMBER}),
              ),
            )),
          ],
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: Get.width,
                  height: Get.height,
                  color: Colors.blueGrey,
                ),
                Container(
                  width: Get.width,
                  height: Get.height * 0.2,
                  color: Theme.of(context).primaryColor,
                ),
                Column(
                  children: [
                    Container(
                        alignment: Alignment.bottomCenter,
                        width: Get.width,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: Text("Informasi data pelanggan"),
                            ),
                            MemberFormView(),
                            // InvoiceCardWidget(label: "Tagihan bulan ini")
                          ],
                        )),
                  ],
                ),
              ],
            )));
  }
}
