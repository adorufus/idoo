import 'package:get/get.dart';
import 'package:idoo/app/modules/auth_modules/otp/controllers/otp_api_consumer.dart';

import '../controllers/otp_controller.dart';

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpController>(
      () => OtpController(),
    );

    Get.put<OtpApiConsumer>(OtpApiConsumer());
  }
}
