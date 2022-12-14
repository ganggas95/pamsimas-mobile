import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pamsimas/app/widgets/input_widget.dart';

class MemberFormView extends GetView {
  const MemberFormView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(children: [
        InputWidget(hint: "Masukkan nama pelanggan", label: "Name", color: Colors.white),
        const SizedBox(
          height: 24,
        ),
        InputWidget(
            hint: "Masukkan no telpon / WA pelanggan", label: "No. Telp / WA", color: Colors.white),
        const SizedBox(
          height: 24,
        ),
        InputWidget(hint: "Masukkan NIK pelanggan", label: "NIK", color: Colors.white),
        const SizedBox(
          height: 24,
        ),
        InputWidget(hint: "Masukkan alamat pelanggan", label: "Alamat", color: Colors.white),
      ]),
    );
  }
}
