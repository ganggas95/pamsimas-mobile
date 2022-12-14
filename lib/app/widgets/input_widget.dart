import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  late String label;
  late String hint;
  late TextEditingController? controller;
  late Color? color;
  bool obscureText = false;
  InputWidget(
      {Key? key,
      required this.label,
      required this.hint,
      this.controller,
      this.color,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            label: Text(label),
            hintText: hint,
            filled: true,
            fillColor: color,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
