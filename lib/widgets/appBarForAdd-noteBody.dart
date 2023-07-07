import 'package:flutter/material.dart';

import 'customSearchItem.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onpressed, });
final String title;
final IconData icon ;
  final void Function()? onpressed;

@override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(28.0),
      child: Row(
        children: [
          // SizedBox(height: 100,),
          Text(
           title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          const Spacer(),
          customSearchItem(
onpressed: onpressed,
            icon:icon,)
        ],
      ),
    );
  }
}
