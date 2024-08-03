import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/AppColors.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  const AppButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [
                  appBlueColor,
                  appLightPurpleColor
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight
            ),
          color: Colors.blue.shade800,
          borderRadius: BorderRadius.circular(12)
        ),
        child:
        Center(child: Text(buttonText,style: const TextStyle(color: Colors.white,
        fontSize: 22,fontWeight: FontWeight.w600),)),
      ),
    );
  }
}
