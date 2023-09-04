import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seyedbox/controllers/controllers.dart';
import 'package:seyedbox/controllers/networkControllers.dart';
import 'package:seyedbox/utils/constracts.dart';


import 'package:seyedbox/widgets/NavigationButton.dart';
import 'package:seyedbox/widgets/widgetScreens/CoustomDrawer.dart';

class MainViewPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> skey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double width = ScreenSize(context).width;
    double height = ScreenSize(context).height;
    return Scaffold(
        backgroundColor: darkGreen,
        extendBody: true,
        bottomNavigationBar: MyNavigationButton(),
        extendBodyBehindAppBar: false,
        appBar: appbar(),
        key: skey,
        endDrawer: CoustomDrawer(skey: skey),
        body: Obx(
          () {
            return Get.find<NetworkApi>().movielist.isEmpty
                ? Center(
                    child: CircularProgressIndicator(
                    color: lightGreen,
                  ))
                : Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [darkGreen, lightGreen],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter)),
                    child: GetBuilder<ScreensController>(
                      id: 1,
                      builder: (controller) {
                        return Get.find<ScreensController>().body;
                      },
                    ));
          },
        ));
  }

  AppBar appbar() {
    return AppBar(
        leadingWidth: 200,
        backgroundColor: lightGreen,
        elevation: 0,
        leading: Image.asset(
          'assets/images/Logo.png',
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        title:
            Obx(() => Text(Get.find<ScreensController>().appBarTitle.value)));
  }
}


/*

بهترین حالت فایل جیسون هست که بصورت
name:name
funcion:funcion

عمل کنه

 */