import 'package:flutter/material.dart';

import '../constens/constes.dart';
class customButtom extends StatelessWidget {
  const customButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: const Center(
          child: Text(
            "Done",
            style: TextStyle(

                color: KprimaryColor, fontSize: 20, fontWeight: FontWeight.bold),
          )),
    );
  }
}
