import 'package:get/get.dart';
import 'package:idoo/app/modules/landing/controllers/landing_api_consumer.dart';
import 'package:idoo/app/modules/landing/controllers/landing_controller.dart';

class LandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LandingApiConsumer>(LandingApiConsumer());
    Get.put<LandingController>(LandingController());
  }
}
