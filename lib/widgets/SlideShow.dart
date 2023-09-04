
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seyedbox/controllers/controllers.dart';
import 'package:seyedbox/utils/constracts.dart';



class SlideShow extends StatelessWidget {
  const SlideShow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: PageView.builder(
        reverse: true,
        controller: PageController(initialPage: 0,viewportFraction:1),
        onPageChanged: (value) {
          Get.find<BoolControllers>().slideIndex.value = value;
        },
        itemCount: imgString.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: ScreenSize(context).width,
                height: 230,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    imgString[index],
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              
            ],
          );
        },
      ),
    );
  }
}

class SlideShowIndecater extends StatelessWidget {
  const SlideShowIndecater({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = imgString.length-1; i >= 0; i--)
                    AnimatedContainer(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      duration: const Duration(
                        milliseconds: 350,
                      ),
                      height: 8.0,
                      width:Get.find<BoolControllers>().slideIndex ==
                                      i?22.0 : 8.0,
                      decoration: BoxDecoration(
                          color:
                              Get.find<BoolControllers>().slideIndex ==
                                      i
                                  ? white
                                  : darkGreen,
                          borderRadius: BorderRadius.circular(8.0)),
                    )
                ],
              ));
  }
}
