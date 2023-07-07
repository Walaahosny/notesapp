import 'package:appnotess/cubit/read_notes_cubit/readNotesCubit.dart';
import 'package:appnotess/cubit/read_notes_cubit/readNotesStates.dart';
import 'package:appnotess/models/notes_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'NoteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit,ReadNotesStates>(

      builder:(context,state) {
        List<NoteModel>notes=BlocProvider.of<ReadNotesCubit>(context).notes ?? [];

        return
          Padding(

            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ListView.builder(
              //to remove default padding of list view
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: NoteItem(note: notes[index],),
                );
              },
            ),
          );
      }   );
  }
}
