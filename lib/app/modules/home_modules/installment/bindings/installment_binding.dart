import 'package:get/get.dart';

import '../controllers/installment_controller.dart';

class InstallmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InstallmentController>(
      () => InstallmentController(),
    );
  }
}
