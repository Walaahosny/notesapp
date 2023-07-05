import 'package:flutter/material.dart';

import 'customSearchItem.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(28.0),
      child: Row(
        children: [
          // SizedBox(height: 100,),
          Text(
            "Notes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          Spacer(),
          customSearchItem()
        ],
      ),
    );
  }
}
