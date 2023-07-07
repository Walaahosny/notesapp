import 'package:appnotess/cubit/add_notes_cubit/add_notes_cubit.dart';
import 'package:appnotess/cubit/read_notes_cubit/readNotesCubit.dart';
import 'package:appnotess/views/Screens/addNoteScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'blocObserve/simplw-bloc_observe.dart';
import 'constens/constes.dart';
import 'models/notes_model.dart';

void main() async {
  Bloc.observer=SimpleBlocObserver();
  await Hive.initFlutter();
//you should add registerAdapter before openbox
  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (BuildContext context) =>ReadNotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notes',
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const AddNotesScreen(),
      ),
    );
  }
}
