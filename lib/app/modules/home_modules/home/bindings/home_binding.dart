import 'package:get/get.dart';
import 'package:idoo/app/modules/home_modules/games/controllers/games_controller.dart';
import 'package:idoo/app/modules/home_modules/home/controllers/home_api_consumer.dart';
import 'package:idoo/app/modules/profile_modules/edit_profile/bindings/edit_profile_binding.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // Make sure to initialize HomeController
    Get.lazyPut<HomeController>(() => HomeController());
    Get.put(GamesController());
  }
}
