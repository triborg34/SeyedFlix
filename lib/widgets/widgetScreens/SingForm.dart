import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seyedbox/controllers/controllers.dart';
import 'package:seyedbox/utils/constracts.dart';
import 'package:seyedbox/widgets/DelayedColumn.dart';
import 'package:seyedbox/widgets/InputTextFields.dart';
import 'package:seyedbox/widgets/RowSingScreenButtons.dart';

class SingForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 65,
          ),
          Obx(
            () {
              return AnimatedContainer(
                duration: Duration(milliseconds: 300),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: darkGreen, borderRadius: BorderRadius.circular(25)),
                height:
                    Get.find<BoolControllers>().isSing.value == 1 ? 500 : 330,
                child: Column(children: [
                  RowsButtons(),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(child: SingUp_Login_PageView())
                ]),
              );
            },
          )
        ],
      ),
    );
  }
}

class SingUp_Login_PageView extends StatelessWidget {
  const SingUp_Login_PageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: Get.find<MyPageController>().pageController,
      onPageChanged: (value) {
        Get.find<BoolControllers>().isSing.value = value;
      },
      children: [LgoinForm(), SingUpForm()],
    );
  }
}

class SingUpForm extends StatelessWidget {
  const SingUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        InputTextFeilds(
            hintText: "ایمیل", iconData: Icons.email, isPassword: false),
        SizedBox(
          height: 15,
        ),
        InputTextFeilds(
            hintText: "نام کاربری", iconData: Icons.person, isPassword: false),
        SizedBox(
          height: 15,
        ),
        DelyedColumn()
      ]),
    );
  }
}


class LgoinForm extends StatelessWidget {
  const LgoinForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        InputTextFeilds(
            hintText: "نام کاربری", iconData: Icons.person, isPassword: false),
        SizedBox(
          height: 15,
        ),
        InputTextFeilds(
          hintText: "رمز عبور",
          iconData: Icons.visibility,
          isPassword: true,
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 400,
          height: 50,
          child: ElevatedButton(
              style: TextButton.styleFrom(backgroundColor: lightGreen),
              onPressed: () {},
              child: Text(
                "ورود",
                style: TextStyle(
                    color: white, fontSize: 18, fontWeight: FontWeight.bold),
              )),
        )
      ]),
    );
  }
}

