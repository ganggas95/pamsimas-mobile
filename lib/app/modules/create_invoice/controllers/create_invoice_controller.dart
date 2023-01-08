import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pamsimas/app/controllers/auth_controller.dart';

class CreateInvoiceController extends GetxController {
  
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
}
