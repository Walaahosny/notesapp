import 'package:flutter/material.dart';

import '../../widgets/add_note_bottom_sheet.dart';
import '../Pages_body/body_addNote_screen.dart';



class AddNotesScreen extends StatelessWidget {
  const AddNotesScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            //make buttomsheet scroll when keyboard apear
            isScrollControlled: true,
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
