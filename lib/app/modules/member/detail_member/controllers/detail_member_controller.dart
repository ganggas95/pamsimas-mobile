import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pamsimas/app/constants/dashboard_const.dart';
import 'package:pamsimas/app/modules/member/model/member_model.dart';
import 'package:pamsimas/app/routes/app_pages.dart';

class DetailMemberController extends GetxController {
  final nameController = TextEditingController();
  final aliasController = TextEditingController();
  final phoneController = TextEditingController();
  final nikController = TextEditingController();
  final addressController = TextEditingController();

  Stream<Member> getData() {
    return FirebaseFirestore.instance
        .collection("members")
        .doc(Get.arguments["nik"])
        .snapshots()
        .map((snapshot) {
      final member = Member.fromJson(snapshot.data()!);
      nameController.text = member.name;
      aliasController.text = member.alias ?? "";
      nikController.text = member.nik;
      phoneController.text = member.phone ?? "";
      addressController.text = member.address ?? "";
      return member;
    });
  }

  Future<void> updateMember() async {
    await FirebaseFirestore.instance
        .collection("members")
        .doc(Get.arguments["nik"])
        .update(Member(
                name: nameController.value.text,
                nik: nikController.value.text,
                alias: aliasController.value.text,
                phone: phoneController.value.text,
                address: addressController.value.text)
            .toJson())
        .then((value) {
          Get.showSnackbar(const GetSnackBar(message: "Berhasil mengubah data!", duration: Duration(seconds: 3),));
          Get.offAndToNamed(Routes.DASHBOARD,
            arguments: {"module": DashboardModules.MEMBER});
        });
  }
}
