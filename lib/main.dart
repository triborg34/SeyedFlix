import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



import 'package:get/get.dart';
import 'package:seyedbox/utils/bindings.dart';
import 'package:seyedbox/utils/constracts.dart';

import 'utils/pagegRoute.dart';


void main() { 
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: lightGreen));
  return runApp(const MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: Routes.pageRoutes,
        initialBinding:AppBindigs() ,
        initialRoute:'/' ,

      );

  }
}


//TODO:complete the api
//TODO:compelete the categorys in drawer
//TODO:add deatils screen 

