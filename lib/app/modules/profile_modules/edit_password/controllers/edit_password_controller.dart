import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditPasswordController extends GetxController {
  //TODO: Implement EditPasswordController

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
