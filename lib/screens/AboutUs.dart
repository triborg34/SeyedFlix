import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seyedbox/utils/constracts.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Container(
          padding: EdgeInsets.only(right: 50),
          
          alignment: Alignment.center,
            child: Image.asset(
          'assets/images/Logo.png',
        )),
        Text(
          "Thanks For Chosing Us",
          textAlign: TextAlign.center,
          style: TextStyle(color: white, fontSize: 24),
        ),
        SizedBox(height: 150),
        Text(
          "Made by ❤ Aref Mousavi",
          style: TextStyle(color: white.withOpacity(0.5)),
        )
      ],
    );
  }
}
