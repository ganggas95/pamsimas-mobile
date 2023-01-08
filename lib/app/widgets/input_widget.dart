import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  late String label;
  late String hint;
  bool enabled = true;
  late TextEditingController? controller;
  late Color? color;
  bool obscureText = false;
  late String? errorText;
  late int? maxLength;
  InputWidget(
      {Key? key,
      required this.label,
      required this.hint,
      this.controller,
      this.color,
      this.enabled = true,
      this.errorText,
      this.maxLength,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: TextField(
        readOnly: !enabled,
        obscureText: obscureText,
        controller: controller,
        maxLength: maxLength,
        decoration: InputDecoration(
            label: Text(label),
            errorText: errorText,
            hintText: hint,
            filled: true,
            fillColor: color,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
