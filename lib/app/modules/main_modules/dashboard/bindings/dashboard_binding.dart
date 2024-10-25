import 'package:get/get.dart';
import 'package:idoo/app/modules/home_modules/home/controllers/home_api_consumer.dart';
import 'package:idoo/app/modules/home_modules/home/controllers/home_controller.dart';
import 'package:idoo/app/modules/profile_modules/edit_profile/controllers/edit_profile_controller.dart';
import 'package:idoo/app/modules/profile_modules/profile/controllers/profile_api_consumer.dart';
import 'package:idoo/app/modules/profile_modules/profile/controllers/profile_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeApiConsumer());
    Get.put(ProfileApiConsumer());
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.put(HomeController());
    Get.put(ProfileController());
  }
}
