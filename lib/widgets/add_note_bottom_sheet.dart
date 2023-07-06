import 'package:appnotess/cubit/add_notes_cubit/add_notes_cubit.dart';
import 'package:appnotess/cubit/add_notes_cubit/add_notes_state.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>AddNotesCubit(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          builder: (BuildContext context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNotesLoading ? true : false,
                child: const SingleChildScrollView(child: AddNoteForm()));
          },
          listener: (BuildContext context, Object? state) {
            if (state is AddNotesFailure) {
              print("failed ${state.errMessage}");
            }
            if (state is AddNotesSuccess) {
              Navigator.pop(context);
            }
          },
        ),
      ),
    );
  }
}
