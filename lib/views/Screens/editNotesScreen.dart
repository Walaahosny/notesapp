import 'package:flutter/material.dart';

import '../../models/notes_model.dart';
import '../Pages_body/body_editNote_screen.dart';
class EditNotesScreen extends StatelessWidget {
  const EditNotesScreen({super.key, required this.note});

  final NoteModel note;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: BodyEditNoteScreen(note: note,),);
  }
}
