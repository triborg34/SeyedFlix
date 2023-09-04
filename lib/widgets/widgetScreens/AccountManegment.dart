import 'package:flutter/material.dart';
import 'package:seyedbox/utils/constracts.dart';
import 'package:seyedbox/widgets/AccountFetures.dart';

class AccountManegment extends StatelessWidget {
  const AccountManegment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 150,
        width: 150,
        child: Stack(alignment: Alignment.center, children: [
          Image.asset('assets/images/angela.png'),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: darkGreen,
                    borderRadius: BorderRadius.circular(100)),
                child: Icon(
                  Icons.add_a_photo,
                  color: white,
                )),
          )
        ]),
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        "Angela Yu",
        style: TextStyle(
            color: white, fontWeight: FontWeight.bold, fontSize: 24),
      ),
      SizedBox(height: 25),
      AccountFetures(
        icon: Icons.favorite,
        onclick: () {},
        title: "لیست علاقه مندی ها",
      ),SizedBox(height: 15,),
              AccountFetures(
        icon: Icons.person_pin,
        onclick: () {},
        title: "تغییر اطلاعات کاربری",
      ),
      SizedBox(height: 15,),
              AccountFetures(
        icon: Icons.exit_to_app,
        onclick: () {},
        title: "خارج شدن",
      )
    ]);
  }
}
