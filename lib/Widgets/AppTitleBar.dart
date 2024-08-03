import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTitleBar extends StatelessWidget {
  final String pageTitle;
  const AppTitleBar({super.key, required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white)
              ),
              child: const Center(
               child: Padding(
                 padding: EdgeInsets.all(8.0),
                 child: Icon(Icons.arrow_back_ios_new,color: Colors.white),
               ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white)
              ),
              child:  Center(
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text(pageTitle,style: const TextStyle(fontWeight: FontWeight.w600,
                 fontSize: 20,color: Colors.white),),
               ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
