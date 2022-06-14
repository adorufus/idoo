import 'package:get/get.dart';

import '../controllers/edit_pin_controller.dart';

class EditPinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditPinController>(
      () => EditPinController(),
    );
  }
}
