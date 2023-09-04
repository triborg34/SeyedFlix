// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:seyedbox/utils/constracts.dart';

class TextRow extends StatelessWidget {
  String title;
   TextRow({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            onPressed: () {},
            child: Text(
              "دیدن همه",
              style: TextStyle(
                  color: white.withOpacity(0.5),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            )),
        Text(
          title,
          style: TextStyle(
              color: white, fontSize: 24, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
