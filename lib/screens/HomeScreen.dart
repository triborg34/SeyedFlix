
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seyedbox/controllers/networkControllers.dart';
import 'package:seyedbox/widgets/CategorysHorizWidget.dart';
import 'package:seyedbox/widgets/HorizentalListViews.dart';
import 'package:seyedbox/widgets/Searchbar.dart';
import 'package:seyedbox/widgets/SlideShow.dart';
import 'package:seyedbox/widgets/TextRow.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MySearchBar(),
          SizedBox(
            height: 15,
          ),
          CategorysHorizWidget(),
          SizedBox(
            height: 20,
          ),
          SlideShow(),
          SlideShowIndecater(),
          SizedBox(
            height: 25,
          ),
          TextRow(title: "تازه ها"),
          SizedBox(
            height: 10,
          ),
          HorizentalListViews(movielist: Get.find<NetworkApi>().movielist),SizedBox(height: 25,),
          TextRow(title: "فیلم ها",),
          SizedBox(
            height: 10,
          ),
          HorizentalListViews(movielist: Get.find<NetworkApi>().movielist),
          SizedBox(height: 60,)
        ],
      ),
    );
  }
}

