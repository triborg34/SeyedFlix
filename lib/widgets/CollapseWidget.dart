import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seyedbox/controllers/controllers.dart';
import 'package:seyedbox/utils/constracts.dart';

class CollapeWidget extends StatelessWidget {
  const CollapeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CollapseControllers>(
      initState: (_) {},
      builder: (controller) {
        return ExpansionPanelList(
            dividerColor: darkGreen,
            elevation: 2,
            expandedHeaderPadding: EdgeInsets.symmetric(vertical: 5),
            expansionCallback: (int index, bool isExpanded) {
              Get.find<CollapseControllers>().items[index].expanded =
                  !isExpanded;
              controller.update();
            },
            children: [
              ExpansionPanel(
                  canTapOnHeader: true,
                  isExpanded: Get.find<CollapseControllers>().items[0].expanded,
                  backgroundColor: lightGreen,
                  headerBuilder: (context, isExpanded) {
                    return Get.find<CollapseControllers>().items[0].listtile();
                  },
                  body: Column(
                    children: [Text("data")],
                  )),
              ExpansionPanel(
                  canTapOnHeader: true,
                  isExpanded: Get.find<CollapseControllers>().items[1].expanded,
                  backgroundColor: lightGreen,
                  headerBuilder: (context, isExpanded) {
                    return Get.find<CollapseControllers>().items[1].listtile();
                  },
                  body: Column(
                    children: [Text("data2")],
                  )),
              ExpansionPanel(
                  canTapOnHeader: true,
                  isExpanded: Get.find<CollapseControllers>().items[2].expanded,
                  backgroundColor: lightGreen,
                  headerBuilder: (context, isExpanded) {
                    return Get.find<CollapseControllers>().items[2].listtile();
                  },
                  body: Column(
                    children: [Text("data")],
                  )),
              ExpansionPanel(
                  canTapOnHeader: true,
                  isExpanded: Get.find<CollapseControllers>().items[3].expanded,
                  backgroundColor: lightGreen,
                  headerBuilder: (context, isExpanded) {
                    return Get.find<CollapseControllers>().items[3].listtile();
                  },
                  body: Column(
                    children: [Text("data")],
                  )),
            ]);
      },
    );
  }
}
