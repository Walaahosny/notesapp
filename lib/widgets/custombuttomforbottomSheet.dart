import 'package:flutter/material.dart';

import '../constens/constes.dart';
class customButtom extends StatelessWidget {
  const customButtom({super.key, this.ontap});
final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
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
      ),
    );
  }
}
