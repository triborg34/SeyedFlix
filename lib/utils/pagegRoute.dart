import 'package:get/get.dart';
import 'package:seyedbox/screens/MainViewPage.dart';
import 'package:seyedbox/screens/movieDeatailsScreen.dart';

class Routes {
  static List<GetPage> pageRoutes = [
    GetPage(
      name: '/',
      page: () => MainViewPage(),
    ),
    GetPage(name: '/moviedet', page: (() =>MovieDeatilsScreen()) )
  ];
}
