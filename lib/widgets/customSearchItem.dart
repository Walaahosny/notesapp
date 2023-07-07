import 'package:flutter/material.dart';

class customSearchItem extends StatelessWidget {
  const customSearchItem({super.key, required this.icon, this.onpressed, });

  final IconData icon;

  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(0.1),
      ),
      child:  Center(


          child: IconButton(

               onPressed: onpressed, icon: Icon(icon),)),
    );
  }
}
