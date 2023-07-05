import 'package:flutter/material.dart';

import 'NoteItem.dart';
import 'NotesListView.dart';
import 'appBarforBody.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [CustomAppBar(), Expanded(child: NotesListView())],
      ),
    );
  }
}
