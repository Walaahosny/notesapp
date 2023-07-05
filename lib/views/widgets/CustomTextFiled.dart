import 'package:flutter/material.dart';

import '../../constens/constes.dart';

class CustomTextFiled extends StatelessWidget {
  final String hint;
  final int maxLines;

  const CustomTextFiled(
      {super.key, required this.hint, required this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: KprimaryColor),
          border: buildOutlineInputBorder(KprimaryColor),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(KprimaryColor)),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([Color? color]) =>
      OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: color ?? Colors.white));
}
