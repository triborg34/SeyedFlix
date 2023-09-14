import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seyedbox/controllers/controllers.dart';
import 'package:seyedbox/screens/AccountScreen.dart';
import 'package:seyedbox/utils/constracts.dart';
import 'dart:math' as math;

class CoustomDrawer extends StatelessWidget {
  const CoustomDrawer({
    Key? key,
    required this.skey,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> skey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          shrinkWrap: true,
          children: [
            DrawerHeader(
                child: Center(child: Image.asset("assets/images/Logo.png"))),
            Container(
              margin: EdgeInsets.symmetric(vertical: 1),
              color: lightGreen,
              child: ListTile(
                trailing: Icon(
                  Icons.person,
                  color: white,
                ),
                onTap: () {
                  Get.find<BoolControllers>().navigateIndex.value = 2;
                  Get.find<ScreensController>().body = AccountScreen();
                  Get.find<ScreensController>().appBarTitle.value = "Account";

                  Get.find<ScreensController>().update([1]);

                  skey.currentState!.closeEndDrawer();
                },
                title: Text("ورود/ثبت نام",
                    style: TextStyle(color: white, fontSize: 18),
                    textAlign: TextAlign.right),
                style: ListTileStyle.list,
              ),
            ),
            // CollapeWidget(),
            ExpansionWidget(

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
                              'فیلم',
                              textAlign: TextAlign.right,
                              style: TextStyle(color: white,fontSize: 18,fontWeight: FontWeight.bold),
                            )),
                          ],
                        ),
                      ));
                },
                content: Container(
                  width: double.infinity,
                  color: darkGreen,
                  padding: EdgeInsets.all(20),
                  child: Column(children: [
                    
                  ],)
                )),
            Container(
                color: Colors.red,
                child: ListTile(
                  style: ListTileStyle.list,
                  trailing: Icon(
                    Icons.exit_to_app,
                    color: white,
                  ),
                  title: Text(
                    "خارج شدن",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 18,
                      color: white,
                    ),
                  ),
                ))
          ],
        ),
        backgroundColor: darkGreen);
  }
}
