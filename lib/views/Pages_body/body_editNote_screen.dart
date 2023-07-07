import 'package:appnotess/cubit/read_notes_cubit/readNotesCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/notes_model.dart';
import '../../widgets/CustomTextFiled.dart';
import '../../widgets/appBarForAdd-noteBody.dart';
import '../../widgets/edit_color_listview.dart';

class BodyEditNoteScreen extends StatefulWidget {
  const BodyEditNoteScreen({super.key, required this.note, this.onpressed});

  final NoteModel note;
  final void Function()? onpressed;

  @override
  State<BodyEditNoteScreen> createState() => _BodyEditNoteScreenState();
}

class _BodyEditNoteScreenState extends State<BodyEditNoteScreen> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [
          CustomAppBar(
            onpressed: () {
              //use widet to acces note becouse note in statefulwidget
              if (title != null) {
                widget.note.title = title!;
              }

              if (subtitle != null) {
                widget.note.subtitle = subtitle!;
              }
              //  widget.note.title = title??widget.note.title;

              //widget.note.subtitle = subtitle?? widget.note.subtitle;
              widget.note.save();

              BlocProvider.of<ReadNotesCubit>(context).ReadFeatchAllnotes();
              Navigator.pop(context);
            },
            title: 'EditNotes',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFiled(
            //receive data
            onchange: (value) {
              title = value;
            },
            hint: widget.note.title,
            maxLines: 1,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFiled(
            //receive data

            onchange: (value) {
              subtitle = value;
            },
            hint: widget.note.subtitle,
            maxLines: 10,
          ),
          SizedBox(
            height: 20,
          ),
          editColorListView(note: widget.note,)
        ],
      ),
    );
  }
}
