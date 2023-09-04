import 'package:flutter/material.dart';
import 'package:seyedbox/utils/constracts.dart';

class CollapseHeader {
  String headerName;
  bool expanded;

  CollapseHeader({required this.headerName, this.expanded = false });



  Widget listtile() {
    return ListTile(
      style: ListTileStyle.list,

    textColor: white,
      title: Text(headerName,textAlign: TextAlign.right,style: TextStyle(fontSize: 18)),
    );
  }
}

