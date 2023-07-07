import 'package:appnotess/cubit/add_notes_cubit/add_notes_cubit.dart';
import 'package:appnotess/cubit/add_notes_cubit/add_notes_state.dart';
import 'package:flutter/material.dart';
import '../cubit/read_notes_cubit/readNotesCubit.dart';
import 'add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        builder: (BuildContext context, state) {
          //add absorbpointer to prevent user edit in screen when loading
          return  AbsorbPointer(
            absorbing: state is AddNotesLoading?true:false,
            child:Padding(
              padding: EdgeInsets.only(left: 16.0,right: 16,

                  //to make keyboard take space
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
        listener: (BuildContext context, Object? state) {
          if (state is AddNotesFailure) {
            print("failed ${state.errMessage}");
          }
          if (state is AddNotesSuccess) {
            BlocProvider.of<ReadNotesCubit>(context).ReadFeatchAllnotes();

            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
