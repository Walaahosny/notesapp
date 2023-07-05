import 'package:flutter/material.dart';

import '../../widgets/CustomTextFiled.dart';
import '../../widgets/NotesListView.dart';
import '../../widgets/appBarforAddnoteBody.dart';
class bodyEditNoteScreen extends StatelessWidget {
  const bodyEditNoteScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [CustomAppBar(title: 'EditNotes', icon: Icons.check,),
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

        ],
      ),
    );
  }
}
