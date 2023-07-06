import 'package:flutter/material.dart';

import '../constens/constes.dart';

class customButtom extends StatelessWidget {
  const customButtom({super.key, this.ontap, this.isLoading = false});
  final void Function()? ontap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: isLoading
                ?  const SizedBox(
              height: 26,width: 26,
                  child: CircularProgressIndicator(

              color: Color( 0xff64CDf7 ),
            ),
                )
                : const Text(
                    "Done",
                    style: TextStyle(
                        color: KprimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}
