import 'package:flutter/material.dart';

import '../../widgets/add_note_bottom_sheet.dart';
import '../Pagesbody/body_addNote_screen.dart';



class addNotesScreen extends StatelessWidget {
  const addNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      body: const addNotesBody(),
    );
  }
}
