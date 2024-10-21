import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:idoo/app/routes/app_pages.dart';

class PinController extends GetxController {
  late TextEditingController pin;
  late RxList<Map<String, dynamic>> pins;
  late List<dynamic> inputNumbers;
  late RxString title;

  @override
  void onInit() {
    super.onInit();
    pin = TextEditingController();
    pins = [
      {"value": -1, "filled": false},
      {"value": -1, "filled": false},
      {"value": -1, "filled": false},
      {"value": -1, "filled": false},
    ].obs;
    title = "Silahkan Buat PIN".obs;

    inputNumbers = [1, 2, 3, 4, 5 ,6, 7, 8, 9, "", 0, "delete"];
  }

  @override
  void onClose() {
    pin.dispose();
    pins = [
      {"value": -1, "filled": false},
      {"value": -1, "filled": false},
      {"value": -1, "filled": false},
      {"value": -1, "filled": false},
    ].obs;
  }

  void onPinsFilled() {
    if(pins.every((pin) => pin['filled'] == true && pin['value'] != -1)) {
      Get.toNamed(Routes.DASHBOARD);
    }
  }
}
