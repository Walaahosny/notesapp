import 'package:appnotess/cubit/read_notes_cubit/readNotesStates.dart';
import 'package:appnotess/models/notes_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../constens/constes.dart';

class ReadNotesCubit extends Cubit<ReadNotesStates> {
  ReadNotesCubit() : super(ReadNotesInitial());
  List<NoteModel>? notes;
  ReadFeatchAllnotes() async {
    //try {
    var noteBox = Hive.box<NoteModel>(kNotesBox);
//return data from box
    notes = noteBox.values.toList();
    emit(ReadNotesSuccess());
    // } catch (e) {
    //emit(ReadNotesFailure(e.toString()));
    //}
  }
}
