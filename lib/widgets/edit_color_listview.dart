import 'package:appnotess/models/notes_model.dart';
import 'package:appnotess/widgets/color_item.dart';
import 'package:flutter/material.dart';
import '../constens/constes.dart';

class editColorListView extends StatefulWidget {
  const editColorListView({super.key, required this.note});

  final NoteModel note;
  @override
  State<editColorListView> createState() => _editColorListView();
}

class _editColorListView extends State<editColorListView> {
  late int currentindex;
  @override
  void initState() {
    currentindex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

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
                    widget.note.color = kColors[index].value;
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
