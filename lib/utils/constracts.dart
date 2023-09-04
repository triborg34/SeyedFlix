import 'package:flutter/material.dart';

extension ScreenSize on BuildContext {
  get width => MediaQuery.of(this).size.width;
  get height => MediaQuery.of(this).size.height;
}

Color lightGreen = Color.fromRGBO(3, 58, 22, 1);
Color darkGreen = Color.fromRGBO(1, 31, 11, 1.0);
Color white = Colors.white;
Color orange=Colors.orange;

List<String> categorys = [
  "All",
  'Movies',
  'Series',
  "Anime",
  "Cartoons",
  "Documents"
];

String imgPath = 'assets/images';

List<String> imgString = [
  '$imgPath/001.jpg',
  '$imgPath/002.jpg',
  '$imgPath/003.jpg',
  '$imgPath/004.jpg'
];

List<IconData> navigationIcons = <IconData>[
  Icons.home_outlined,
  Icons.explore_outlined,
  Icons.person_outline,
  Icons.dashboard_customize_outlined
];





