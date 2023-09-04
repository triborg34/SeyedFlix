import 'package:flutter/material.dart';
import 'package:seyedbox/utils/constracts.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
           height: 60,
          decoration: BoxDecoration(
             color: darkGreen,
              borderRadius: BorderRadius.circular(25)),
          child: TextField(
            onSubmitted: (text) {},
            cursorColor: white,
            cursorHeight: 20,
            expands: false,
            textDirection: TextDirection.rtl,
            style:
                TextStyle(color: white, fontWeight: FontWeight.bold),
            decoration: InputDecoration(

              hintStyle: TextStyle(color: white.withOpacity(0.5)),
                hintText: "جستجو...",
                hintTextDirection: TextDirection.rtl,
                border: OutlineInputBorder(

                    borderSide: BorderSide(width: 0, style: BorderStyle.none))),
          ),
        ),
        CircleAvatar(
        child: GestureDetector(
          onTap: () {
            
          },
          child: Icon(
            Icons.search,
            color: white,
            size: 28,
          ),
        ),
        radius: 30,
        backgroundColor: darkGreen,
      ),
      ],
    );
  }
}
