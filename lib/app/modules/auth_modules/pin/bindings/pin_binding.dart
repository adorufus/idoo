import 'package:get/get.dart';
import 'package:idoo/app/modules/auth_modules/pin/controllers/pin_api_consumer.dart';

import '../controllers/pin_controller.dart';

class PinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PinController>(
      () => PinController(),
    );
    
    Get.put<PinApiConsumer>(PinApiConsumer());
  }
}
