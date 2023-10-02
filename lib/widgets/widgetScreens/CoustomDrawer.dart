// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seyedbox/controllers/controllers.dart';
import 'package:seyedbox/screens/AccountScreen.dart';
import 'package:seyedbox/utils/constracts.dart';

import 'package:seyedbox/widgets/ExpansionPanel.dart';

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
            ExpansionPanels(header: "فیلم", contant: movieGenre()),
            ExpansionPanels(
                header: "سریال",
                contant: Container(
                  child: Text("data"),
                )),
            ExpansionPanels(
                header: "انیمیشن",
                contant: Container(
                  child: Text("data"),
                )),
            ExpansionPanels(
                header: "انیمه",
                contant: Container(
                  child: Text("data"),
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

Widget movieGenre() {
  return Container(
    margin: EdgeInsets.only(bottom: 5),
    color: lightGreen,
    child: Column(
      children: [
        coustomListTile(title: "تازه ها",iconData: Icons.new_releases_outlined,ontab: (){}),
        
      ],
    ),
  );
}



Widget coustomListTile({required String title, required IconData iconData,required Function ontab } ){
  return ListTile(
            onTap: ontab(),
            title: Text(
              title,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: white),
            ),
            trailing: Icon(
              iconData,
              color: white,
            ));
}