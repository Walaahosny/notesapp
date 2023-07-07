import 'package:flutter/material.dart';
class colorItem extends StatelessWidget {
  const colorItem({super.key, required this.ischeckedActive, required this.color});
final bool ischeckedActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return
      ischeckedActive? CircleAvatar(
        radius: 38,
        backgroundColor: Colors.blue,
        child: CircleAvatar(
          radius: 36,
          backgroundColor: color,
        ),
      )
      : CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}


