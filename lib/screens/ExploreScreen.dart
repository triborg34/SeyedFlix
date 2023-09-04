import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seyedbox/controllers/networkControllers.dart';
import 'package:seyedbox/widgets/CoustomGridView.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CoustomGridView(movielist: Get.find<NetworkApi>().movielist),
    );
  }
}

