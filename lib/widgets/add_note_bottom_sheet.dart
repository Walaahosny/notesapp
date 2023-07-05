import 'package:appnotess/constens/constes.dart';
import 'package:flutter/material.dart';

import 'CustomTextFiled.dart';
import 'custombuttomforbottomSheet.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomTextFiled(
              hint: 'Title',
              maxLines: 1,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFiled(
              hint: 'Content',
              maxLines: 10,
            ),
            SizedBox(
              height: 40,
            ),
            customButtom(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

