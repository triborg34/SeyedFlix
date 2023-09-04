
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:seyedbox/utils/constracts.dart';

class DetailsButtons extends StatelessWidget {
  String features;
  IconData iconData;
  Function ontab = () {};
  DetailsButtons(
      {required this.features, required this.iconData, required this.ontab});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontab(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: lightGreen),
        child: Row(children: [
          Text(
            features,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            iconData,
            color: white,
            size: 28,
          ),
        ]),
      ),
    );
  }
}
