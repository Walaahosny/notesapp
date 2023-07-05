import 'package:flutter/material.dart';

import '../../widgets/NotesListView.dart';
import '../../widgets/appBarforAddnoteBody.dart';

class addNotesBody extends StatelessWidget {
  const addNotesBody({super.key});


  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [CustomAppBar(title: 'Notes', icon: Icons.search,), Expanded(child: NotesListView())],
      ),
    );
  }
}
