import 'package:appnotess/cubit/add_notes_cubit/add_notes_cubit.dart';
import 'package:appnotess/widgets/color_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class colorListView extends StatefulWidget {
  const colorListView({super.key});

  @override
  State<colorListView> createState() => _colorListViewState();
}

class _colorListViewState extends State<colorListView> {
  int currentindex = 0;
  List<Color> colors = const [
    Color(0xffb5ca8d),
    Color(0xff8bb174),
    Color(0xff426b69),
    Color(0xff222e50),
    Color(0xff2a4849),
    Color(0xffffa69e),
    Color(0xffff7e6b),
    Color(0xff8c5e58),
    Color(0xffa9f0d1),
    Color(0xfffff7f8),
    Color(0xfff9f0d1),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // mul of 2  because radius 38
      height: 38 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.0),
              child: GestureDetector(
                  onTap: () {
                    currentindex = index;
                    BlocProvider.of<AddNotesCubit>(context).color=colors[index];
                    setState(() {});
                  },
                  child: colorItem(
                    ischeckedActive: currentindex == index,
                    color: colors[index],
                  )),
            );
          }),
    );
  }
}
