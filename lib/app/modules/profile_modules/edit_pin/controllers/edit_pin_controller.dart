import 'package:get/get.dart';

class EditPinController extends GetxController {
  bool obscured = false;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void toggleObscured() {
    obscured = !obscured;

    update();
  }
}
