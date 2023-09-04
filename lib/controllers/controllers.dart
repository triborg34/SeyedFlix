import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seyedbox/screens/HomeScreen.dart';

import '../models/collapseModel.dart';

class ScreensController extends GetxController {
  Widget body = HomeScreen();
  var appBarTitle = 'Home'.obs;
}

class BoolControllers extends GetxController {
  var catIndex = 0.obs;
  var slideIndex = 0.obs;
  var navigateIndex = 0.obs;
  var isLogin = false.obs;
  var isSing = 0.obs;
  var isVissiblae = false;
}

class MyPageController extends GetxController {
  PageController pageController =
      PageController(initialPage: Get.find<BoolControllers>().isSing.value);
}

class CollapseControllers extends GetxController {
  List<CollapseHeader> items = <CollapseHeader>[
    CollapseHeader(headerName: 'فیلم '),
    CollapseHeader(headerName: 'سریال '),
    CollapseHeader(headerName: 'انیمه'),
    CollapseHeader(headerName: 'انیمیشن')
  ];
}
