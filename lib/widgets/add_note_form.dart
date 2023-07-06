import 'package:appnotess/cubit/add_notes_cubit/add_notes_cubit.dart';
import 'package:appnotess/views/Screens/addNoteScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/notes_model.dart';
import 'CustomTextFiled.dart';
import 'custombuttomforbottomSheet.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
//add autovalidatenote to check from text you type
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomTextFiled(
              hint: 'Title',
              maxLines: 1,
              onsaved: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFiled(
              onsaved: (value) {
                subtitle = value;
              },
              hint: 'Content',
              maxLines: 10,
            ),
            const SizedBox(
              height: 40,
            ),
            customButtom(
              ontap: () {
                //if formkey if not null
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();

                  var notesmodel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: DateTime.now().toString(),
                      color: Colors.amber.value);
                  BlocProvider.of<AddNotesCubit>(context).addNote(notesmodel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
