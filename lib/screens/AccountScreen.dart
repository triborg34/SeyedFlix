import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seyedbox/controllers/controllers.dart';
import '../widgets/widgetScreens/AccountManegment.dart';
import '../widgets/widgetScreens/SingForm.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<BoolControllers>().isSing.value=0;
    return Get.find<BoolControllers>().isLogin.value ? AccountManegment() : SingForm();
  }
}





