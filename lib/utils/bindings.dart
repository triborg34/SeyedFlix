import 'package:get/get.dart';
import 'package:seyedbox/controllers/controllers.dart';
import 'package:seyedbox/controllers/networkControllers.dart';

class AppBindigs extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkApi());
    Get.put(CollapseControllers());
    Get.lazyPut(() => BoolControllers());
    Get.lazyPut(() => ScreensController());
    Get.lazyPut(() => MyPageController());
    
  }
}
