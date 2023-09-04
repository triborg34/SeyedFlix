// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../utils/constracts.dart';

class AccountFetures extends StatelessWidget {
  String title;
  IconData icon;
  Function onclick=(){};
  AccountFetures({required this.title,required this.icon ,required this.onclick});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(color:title=="خارج شدن" ?Colors.red: lightGreen,borderRadius: BorderRadius.circular(25)),
        child: ListTile(
          onTap: onclick(),
          leading: Icon(icon,color: white,),
          title: Text(title,style: TextStyle(color: white,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
