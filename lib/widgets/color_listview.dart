import 'package:appnotess/widgets/color_item.dart';
import 'package:flutter/material.dart';
class colorListView extends StatelessWidget {
  const colorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // mul of 2  because radius 38
      height: 38*2,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){

        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.0),
          child: colorItem(),
        );
      }),
    );
  }
}
