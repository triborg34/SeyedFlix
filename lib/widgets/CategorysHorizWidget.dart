import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seyedbox/controllers/controllers.dart';
import 'package:seyedbox/utils/constracts.dart';

class CategorysHorizWidget extends StatelessWidget {
  const CategorysHorizWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.transparent,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>Obx(() {
            return GestureDetector(
                onTap: () {
                  Get.find<BoolControllers>().catIndex.value = index;
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  width: 110,
                  child: Center(
                      child: Text(
                    categorys[index],
                    style: TextStyle(
                        color: white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
                  decoration: BoxDecoration(
                      color: Get.find<BoolControllers>().catIndex.value ==
                              index
                          ? lightGreen
                          : darkGreen,
                      borderRadius: BorderRadius.circular(25)),
                ),
              );
          }) ,
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: categorys.length),
    );
  }
}
