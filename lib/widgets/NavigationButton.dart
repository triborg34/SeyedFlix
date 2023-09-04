import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seyedbox/controllers/controllers.dart';
import 'package:seyedbox/screens/AboutUs.dart';
import 'package:seyedbox/screens/AccountScreen.dart';
import 'package:seyedbox/screens/ExploreScreen.dart';
import 'package:seyedbox/screens/HomeScreen.dart';
import 'package:seyedbox/utils/constracts.dart';

class MyNavigationButton extends StatelessWidget {
  const MyNavigationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 50,
        decoration: BoxDecoration(
            color: darkGreen,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: lightGreen)),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int i = navigationIcons.length - 1; i >= 0; i--)
              GestureDetector(
                onTap: () {
                  _getPages(i);
                },
                child: Container(
                  height: 50,
                  width: 85,
                  child: Center(
                    child: Icon(
                      navigationIcons[i],
                      color:
                          Get.find<BoolControllers>().navigateIndex.value == i
                              ? orange
                              : white.withOpacity(0.5),
                      size: 28.0,
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}

_getPages(int i) {
  Get.find<BoolControllers>().navigateIndex.value = i;

  switch (Get.find<BoolControllers>().navigateIndex.value) {
    case 0:
      Get.find<ScreensController>().body = HomeScreen();
      Get.find<ScreensController>().appBarTitle.value = "Home";
      Get.find<ScreensController>().update([1]);
      break;
    case 1:
      Get.find<ScreensController>().body = ExploreScreen();
      Get.find<ScreensController>().appBarTitle.value = "Explore";
      Get.find<ScreensController>().update([1]);
      break;
    case 2:
      Get.find<ScreensController>().body = AccountScreen();
      Get.find<ScreensController>().appBarTitle.value = "Account";
      Get.find<ScreensController>().update([1]);
      break;
          case 3:
      Get.find<ScreensController>().body = AboutUs();
      Get.find<ScreensController>().appBarTitle.value = "About Us";
      Get.find<ScreensController>().update([1]);
      break;
    default:
         Get.find<ScreensController>().body = HomeScreen();
      Get.find<ScreensController>().appBarTitle.value = "Home";
      Get.find<ScreensController>().update([1]);
      break;
  }
}
