import 'package:appnotess/cubit/add_notes_cubit/add_notes_cubit.dart';
import 'package:appnotess/widgets/color_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constens/constes.dart';

class colorListView extends StatefulWidget {
  const colorListView({super.key});

  @override
  State<colorListView> createState() => _colorListViewState();
}

class _colorListViewState extends State<colorListView> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // mul of 2  because radius 38
      height: 38 * 2,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.0),
              child: GestureDetector(
                  onTap: () {
                    currentindex = index;
                    BlocProvider.of<AddNotesCubit>(context).color=kColors[index];
                    setState(() {});
                  },
                  child: colorItem(
                    ischeckedActive: currentindex == index,
                    color: kColors[index],
                  )),
            );
          }),
    );
  }
}
