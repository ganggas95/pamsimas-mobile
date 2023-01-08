import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:pamsimas/app/modules/member/model/member_model.dart';

class MemberController extends GetxController {
  Stream<List<Member>> get streamMembers => FirebaseFirestore.instance
      .collection("members")
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => Member.fromJson(doc.data()))
          .toList());
}
