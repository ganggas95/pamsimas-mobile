import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:pamsimas/app/constants/dashboard_const.dart';
import 'package:pamsimas/app/modules/member/detail_member/widget/member_action_widget.dart';
import 'package:pamsimas/app/modules/member/views/member_form_view.dart';
import 'package:pamsimas/app/routes/app_pages.dart';
import 'package:pamsimas/app/widgets/invoice_card_widget.dart';

import '../controllers/detail_member_controller.dart';

class DetailMemberView extends GetView<DetailMemberController> {
  const DetailMemberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail Pelanggan'),
          shadowColor: Theme.of(context).primaryColor,
          elevation: 0,
          centerTitle: false,
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
        backgroundColor: Colors.blueGrey,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
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

                    Container(
                        alignment: Alignment.bottomCenter,
                        width: Get.width,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Expanded(child: InvoiceCardWidget(label: "Tagihan bulanan anda"))),
                    const MemberActionWidget(),
                  ],
                ),
              ],
            )));
  }
}
