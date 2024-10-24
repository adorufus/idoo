import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PulsaController extends GetxController {
  //TODO: Implement PulsaController

  late TextEditingController phoneController;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

    phoneController = TextEditingController();
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
}
