import 'package:flutter/material.dart';
import 'package:seyedbox/widgets/InputTextFields.dart';

import '../utils/constracts.dart';

class DelyedColumn extends StatefulWidget {
  const DelyedColumn({
    Key? key,
  }) : super(key: key);

  @override
  State<DelyedColumn> createState() => _DelyedColumnState();
}

class _DelyedColumnState extends State<DelyedColumn> with SingleTickerProviderStateMixin {
  late AnimationController controller;
 late Animation<double> fadeAnimation;

   @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 900),
    );

    fadeAnimation = Tween<double>(begin: 0, end: 1).animate(controller);

    controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(milliseconds: 290)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container();
        } else {
          return AnimatedBuilder(
            animation: fadeAnimation,
            builder: (context, child) {
              return Opacity(opacity: fadeAnimation.value, child: Column(
              children: [
                InputTextFeilds(
                    hintText: "رمز عبور",
                    iconData: Icons.visibility,
                    isPassword: true),
                SizedBox(
                  height: 15,
                ),
                InputTextFeilds(
                    hintText: "تکرار رمز عبور",
                    iconData: Icons.visibility,
                    isPassword: true),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 400,
                  height: 50,
                  child: ElevatedButton(
                      style:
                          TextButton.styleFrom(backgroundColor: lightGreen),
                      onPressed: () {},
                      child: Text(
                        "ثبت نام",
                        style: TextStyle(
                            color: white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),);
            },
           
          );
        }
      },
    );
  }
}
