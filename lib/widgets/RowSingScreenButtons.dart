import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seyedbox/utils/constracts.dart';

import '../controllers/controllers.dart';

class RowsButtons extends StatelessWidget {
  const RowsButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Get.find<BoolControllers>().isSing.value = 0;
              Get.find<MyPageController>().pageController.animateToPage(
                  Get.find<BoolControllers>().isSing.value,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn);
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Get.find<BoolControllers>().isSing.value == 0
                      ? orange
                      : lightGreen,
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                  child: Text(
                "ورود",
                style: TextStyle(
                    color: white, fontSize: 18, fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Get.find<BoolControllers>().isSing.value = 1;
              Get.find<MyPageController>().pageController.animateToPage(
                  Get.find<BoolControllers>().isSing.value,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn);
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Get.find<BoolControllers>().isSing.value == 1
                      ? orange
                      : lightGreen,
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                  child: Text(
                "ثبت نام",
                style: TextStyle(
                    color: white, fontSize: 18, fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ),
      ],
    );
  }
}
