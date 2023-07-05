import 'package:flutter/material.dart';

import '../../constens/constes.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(

      cursorColor: KprimaryColor,
      decoration: InputDecoration(
      hintText: 'Title',
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
