import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/read_notes_cubit/readNotesCubit.dart';
import '../../widgets/NotesListView.dart';
import '../../widgets/appBarForAdd-noteBody.dart';

class addNotesBody extends StatefulWidget {
  const addNotesBody({super.key});

  @override
  State<addNotesBody> createState() => _addNotesBodyState();
}

class _addNotesBodyState extends State<addNotesBody> {
  @override
  void initState() {
    BlocProvider.of<ReadNotesCubit>(context).ReadFeatchAllnotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}
