import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MemberActionWidget extends StatelessWidget {
  const MemberActionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      height: 48,
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildActionButton(
              label: "Bayar",
              onPress: () => {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    elevation: 1,
                    width: Get.width * 0.9,
                    behavior: SnackBarBehavior.floating,
                    content: Text("Bayar")))
              },
              backgroundColor: Theme.of(context).primaryColor,
            ),
            const SizedBox(
              width: 10,
            ),
            _buildActionButton(
                label: "History",
                backgroundColor: Colors.white60,
                onPress: () => {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      elevation: 1,
                      width: Get.width * 0.9,
                      behavior: SnackBarBehavior.floating,
                      content: Text("History")))
                },
                textColor: Colors.black),
            const SizedBox(
              width: 10,
            ),
            _buildActionButton(
                label: "Cabut",
                onPress: () => {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      elevation: 1,
                      width: Get.width * 0.9,
                      behavior: SnackBarBehavior.floating,
                      content: Text("Cabut")))
                },
                backgroundColor: Theme.of(context).errorColor),
          ],
        ),
    );
  }

  Widget _buildActionButton(
      {required String label,
      required Color backgroundColor,
      Color textColor = Colors.white,
      Function()? onPress}) {
    return Flexible(
      flex: 1,
      child: Container(
        width: (Get.width * 0.85) / 3,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10)),
        child: MaterialButton(
          onPressed: onPress,
          child: Text(label, style: TextStyle(color: textColor)),
        ),
      ),
    );
  }
}
