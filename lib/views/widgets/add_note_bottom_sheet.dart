import 'package:flutter/material.dart';

import 'CustomTextFiled.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(children: [
        SizedBox(height: 20,),
        CustomTextFiled(hint: 'Title', maxLines: 1,),
SizedBox(height: 20,)
        ,CustomTextFiled(hint: 'Content', maxLines: 10,)
      ],),
    );
  }
}
