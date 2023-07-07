import '../../models/notes_model.dart';

abstract class ReadNotesStates {}

class ReadNotesInitial extends ReadNotesStates {}

class ReadNotesLoading extends ReadNotesStates {}

class ReadNotesSuccess extends ReadNotesStates {
  final List<NoteModel> notes;

  ReadNotesSuccess(this.notes);
}

class ReadNotesFailure extends ReadNotesStates {
  final String errMessge;

  ReadNotesFailure(this.errMessge);
}
