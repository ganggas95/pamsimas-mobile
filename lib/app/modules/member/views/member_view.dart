import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pamsimas/app/routes/app_pages.dart';

import '../controllers/member_controller.dart';

class MemberView extends GetView<MemberController> {
  const MemberView({Key? key}) : super(key: key);
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
              child: ListView.builder(itemCount: 20, itemBuilder: _itemBuilder),
            )
          ],
        ),
      )),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return ListTile(
      onTap: () => Get.toNamed(Routes.DETAIL_MEMBER),
      style: ListTileStyle.drawer,
      leading: const CircleAvatar(
        backgroundImage: AssetImage("assets/images/AvatarMaker.png"),
      ),
      title: const Text("Subhan Nizar"),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("ID Pel. B56123B78"),
          Text("Dusun Kerurak, Desa Segara Katon, Kec. Gangga, RT.5, RW.1")
        ],
      ),
      trailing: const Text("Lunas"),
    );
  }
}
