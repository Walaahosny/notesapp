import 'package:appnotess/models/notes_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState>{
  AddNotesCubit(): super(AddNotesInitial());

  //make method for add node and then store in database
  // to make hive store add note you should make registerAdapter in main file this RegisterAdapter receive adapter
  //receive adapter i generated in file noteS_model.g.dart ,
  addNote(NoteModel note){}
}