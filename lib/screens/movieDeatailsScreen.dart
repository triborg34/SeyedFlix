// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:seyedbox/utils/constracts.dart';
import 'package:seyedbox/widgets/MovieDetailsButtons.dart';

class MovieDeatilsScreen extends StatelessWidget {
  const MovieDeatilsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 2,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: darkGreen,
      body: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Material(
          child: Hero(
            tag: "photo",
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/001.jpg"),
                      fit: BoxFit.cover)),
              width: ScreenSize(context).width,
              height: 400,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          reverse: true,
          child: Row(
            children: [
              DetailsButtons(
                  features: "دانلود", iconData: Icons.download, ontab: () {}),
              DetailsButtons(
                features: "اشتراک گذاری",
                iconData: Icons.share,
                ontab: () {},
              ),
              DetailsButtons(
                features: "علاقمه مندی",
                iconData: Icons.favorite_outline,
                ontab: () {},
              ),
              DetailsButtons(
                  features: "پخش",
                  iconData: Icons.play_arrow_rounded,
                  ontab: () {}),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "جزئیات",
            style: TextStyle(
                color: white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}

// TO DO:کانتینر بزار دور تکس جزییات و اسکرول بش بده 

