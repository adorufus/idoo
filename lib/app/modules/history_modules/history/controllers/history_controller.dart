import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //TODO: Implement HistoryController

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
}
