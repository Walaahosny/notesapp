import 'package:appnotess/constens/constes.dart';
import 'package:flutter/material.dart';

import 'CustomTextFiled.dart';
import 'custombuttomforbottomSheet.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

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
            SizedBox(
              height: 20,
            ),
            CustomTextFiled(
              onsaved: (value) {
                subtitle = value;
              },
              hint: 'Content',
              maxLines: 10,
            ),
            SizedBox(
              height: 40,
            ),
            customButtom(
              ontap: (){
                //if formkey if not null
                if(formkey.currentState!.validate()){
                  formkey.currentState!.save();
                }else{
                  autovalidateMode=AutovalidateMode.always;
                  setState(() {

                  });
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
