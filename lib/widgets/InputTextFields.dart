// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seyedbox/controllers/controllers.dart';
import 'package:seyedbox/utils/constracts.dart';

class InputTextFeilds extends StatelessWidget {
  String hintText;
  IconData iconData;
  bool isPassword;

  InputTextFeilds(
      {required this.hintText,
      required this.iconData,
      required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BoolControllers>(builder: (controller) {
      return TextFormField(
      obscureText: isPassword ? Get.find<BoolControllers>().isVissiblae ? false :true : false,
      textDirection: TextDirection.ltr,
    
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintTextDirection: TextDirection.rtl,
        hintStyle: TextStyle(color: white.withOpacity(0.5)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(45),
          borderSide: BorderSide(color: white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: white),
        ),
        prefixIcon:isPassword
            ? GestureDetector(
                onTap: () {
                  Get.find<BoolControllers>().isVissiblae =
                      !Get.find<BoolControllers>().isVissiblae;
                      controller.update();
                },
                child: Icon(
                  Get.find<BoolControllers>().isVissiblae
                      ? iconData
                      : Icons.visibility_off,
                  color: white,
                ),
              )
            : Icon(iconData, color: white)
      ),
    );
    },);
  }
}

/*

isPassword ? Get.find<BoolControllers>().isVissiblae ? false :true : false,

if(ispassword){
  if(isVissiblle){
    flase
  }else{
    true
  }
}else{
  flase
}

*/