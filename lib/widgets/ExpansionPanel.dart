// ignore_for_file: must_be_immutable

import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../utils/constracts.dart';

class ExpansionPanels extends StatelessWidget {
  String header;
  Widget contant;
ExpansionPanels({required this.header ,required this.contant});

  @override
  Widget build(BuildContext context) {
    return ExpansionWidget(

        initiallyExpanded: true,
        titleBuilder:
            (double animationValue, _, bool isExpaned, toogleFunction) {
            
          return InkWell(
              onTap: () => toogleFunction(animated: true),
              child: Container(
              padding: EdgeInsets.only(right: 10),
                color: lightGreen,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   
                    Transform.rotate(
                      angle: math.pi * animationValue / 2,
                      child: Icon(
                        Icons.arrow_right,
                        size: 40,
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                    ),
                     Expanded(
                        child: Text(
                      header,
                      textAlign: TextAlign.right,
                      style: TextStyle(color: white,fontSize: 18,fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ));
        },
        content: contant);
  }
}
