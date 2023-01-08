import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pamsimas/app/constants/dashboard_const.dart';
import 'package:pamsimas/app/modules/member/detail_member/widget/member_action_widget.dart';
import 'package:pamsimas/app/routes/app_pages.dart';
import 'package:pamsimas/app/widgets/input_widget.dart';
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
                onTap: () => controller.updateMember(),
              ),
            )),
          ],
        ),
        backgroundColor: Colors.blueGrey,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                  alignment: Alignment.bottomCenter,
                  width: Get.width,
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Text("Informasi data pelanggan"),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: Get.width,
                        ),
                        child: _buildMemberFormField(),
                      )
                    ],
                  )),
              Container(
                  alignment: Alignment.bottomCenter,
                  width: Get.width,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: InvoiceCardWidget(label: "Tagihan bulanan anda")),
              const MemberActionWidget(),
            ],
          ),
        ));
  }

  Widget _buildMemberFormField() {
    return StreamBuilder(
        stream: controller.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text("Terjadi kesalahan");
          }
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          }
          return Container(
            width: Get.width,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(children: [
              InputWidget(
                  controller: controller.nikController,
                  enabled: false,
                  hint: "Masukkan NIK pelanggan",
                  label: "NIK",
                  color: Colors.white),
              const SizedBox(
                height: 24,
              ),
              InputWidget(
                  controller: controller.nameController,
                  hint: "Masukkan nama pelanggan",
                  label: "Name",
                  color: Colors.white),
              const SizedBox(
                height: 24,
              ),
              InputWidget(
                  controller: controller.aliasController,
                  hint: "Masukkan nama panggilan",
                  label: "Alias",
                  color: Colors.white),
              const SizedBox(
                height: 24,
              ),
              InputWidget(
                  controller: controller.phoneController,
                  hint: "Masukkan no telpon / WA pelanggan",
                  label: "No. Telp / WA",
                  color: Colors.white),
              const SizedBox(
                height: 24,
              ),
              InputWidget(
                  controller: controller.addressController,
                  hint: "Masukkan alamat pelanggan",
                  label: "Alamat",
                  color: Colors.white),
            ]),
          );
        });
  }
}
