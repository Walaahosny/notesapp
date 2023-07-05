import 'package:flutter/material.dart';

import 'add_note_bottom_sheet.dart';
import 'body_home_screen.dart';

class NotesHomeScreen extends StatelessWidget {
  const NotesHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context){
            return const AddNoteBottomSheet();
          });

        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      body: const NotesBody(),
    );
  }
}
