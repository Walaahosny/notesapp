import 'package:flutter/material.dart';

import '../constens/constes.dart';

class CustomTextFiled extends StatelessWidget {
  final String hint;
  final int maxLines;

  const CustomTextFiled(
      {super.key, required this.hint, required this.maxLines, this.onsaved});
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        //if filed empty return msg else return true ,?? is null check operator is the perilous value is null take the next value
        if (value?.isEmpty ?? true) {
          return 'Filed is required';
        } else {
          return null;
        }
      },
      onSaved: onsaved,
      maxLines: maxLines,
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
          hintText: hint,
          //hintStyle: const TextStyle(color: KprimaryColor),
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
