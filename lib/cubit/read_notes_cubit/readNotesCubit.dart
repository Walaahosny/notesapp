import 'package:appnotess/cubit/read_notes_cubit/readNotesStates.dart';
import 'package:appnotess/models/notes_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../constens/constes.dart';

class ReadNotesCubit extends Cubit<ReadNotesStates> {
  ReadNotesCubit() : super(ReadNotesInitial());

  ReadFeatchAllnotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
//return data from box
      List<NoteModel> notes = notesBox.values.toList();
      emit(ReadNotesSuccess(notes));
    } catch (e) {
      emit(ReadNotesFailure(e.toString()));
    }
  }
}
