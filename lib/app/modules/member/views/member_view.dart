import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pamsimas/app/modules/member/model/member_model.dart';
import 'package:pamsimas/app/routes/app_pages.dart';

import '../controllers/member_controller.dart';

class MemberView extends StatelessWidget {
  final controller = Get.put(MemberController());
  MemberView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Pelanggan'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Get.toNamed(Routes.ADD_MEMBER),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          children: [
            const TextField(
              style: TextStyle(
                backgroundColor: Colors.white,
                height: 1,
              ),
              decoration: InputDecoration(
                  hintText: "Cari Pelanggan di sini!",
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: StreamBuilder(
                stream: controller.streamMembers,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Text("Something when wrong is happen!");
                  } else if (snapshot.hasData) {
                    final List<Member> members = snapshot.data!;
                    return ListView(
                        children: members
                            .map((member) => _itemBuilder(member: member))
                            .toList());
                  }
                  return const CircularProgressIndicator();
                },
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget _itemBuilder({required Member member}) {
    return ListTile(
      onTap: () =>
          Get.toNamed(Routes.DETAIL_MEMBER, arguments: {"nik": member.nik}),
      style: ListTileStyle.drawer,
      title: Text(member.name),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text("NIK. ${member.nik}"), Text(member.address!)],
      ),
      trailing: const Text("Lunas"),
    );
  }
}
