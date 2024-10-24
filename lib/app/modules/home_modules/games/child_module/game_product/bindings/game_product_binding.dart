import 'package:get/get.dart';
import 'package:idoo/app/modules/home_modules/games/child_module/game_product/controllers/game_product_controller.dart';

class GameProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GameProductController());
  }
}
