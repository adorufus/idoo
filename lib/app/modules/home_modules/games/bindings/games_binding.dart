import 'package:get/get.dart';
import 'package:idoo/app/modules/home_modules/games/controllers/games_api_consumer.dart';

import '../controllers/games_controller.dart';

class GamesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamesApiConsumer());
    Get.put(
      GamesController(),
    );
  }
}
