import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pamsimas/app/constants/dashboard_const.dart';
import 'package:pamsimas/app/controllers/auth_controller.dart';
import 'package:pamsimas/app/routes/app_pages.dart';

class AddMemberController extends GetxController {
  final authController = Get.find<AuthController>();
  late CollectionReference collectionMembers;

  final nameController = TextEditingController();
  final aliasController = TextEditingController();
  final phoneController = TextEditingController();
  final nikController = TextEditingController();
  final addressController = TextEditingController();

  void _initiateMemberCollection() {
    collectionMembers = authController.firestore.collection("members");
  }

  @override
  void onReady() {
    super.onReady();
    _initiateMemberCollection();
  }

  Map<String, String> get payload => {
        "nik": nikController.value.text,
        "name": nameController.value.text,
        "phone": phoneController.value.text,
        "alias": aliasController.value.text,
        "address": addressController.value.text,
      };

  bool get isValidNik =>
      nikController.value.text.isNotEmpty &&
      nikController.value.text.length == 16;

  bool get isValidName =>
      nameController.value.text.isNotEmpty &&
      nameController.value.text.length >= 2;

  Future<bool> isValidMember() async {
    await Future.delayed(const Duration(seconds: 1));
    return isValidName && isValidNik;
  }

  void handleAddMember() async {
    if (await isValidMember()) {
      await collectionMembers.doc(nikController.value.text).set(payload);
      Get.toNamed(Routes.DASHBOARD,
          arguments: {"module": DashboardModules.MEMBER});
    }
  }
}
