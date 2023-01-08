import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pamsimas/app/constants/dashboard_const.dart';
import 'package:pamsimas/app/routes/app_pages.dart';
import 'package:pamsimas/app/widgets/input_widget.dart';

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
                onTap: controller.handleAddMember,
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
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
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
                          child: Container(
                            width: Get.width,
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Column(children: [
                              InputWidget(
                                  controller: controller.nikController,
                                  hint: "Masukkan NIK pelanggan",
                                  maxLength: 16,
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
                          ),
                        )
                        // InvoiceCardWidget(label: "Tagihan bulan ini")
                      ],
                    )),
              ],
            )));
  }
}
