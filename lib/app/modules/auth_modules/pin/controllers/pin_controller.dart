import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:idoo/app/routes/app_pages.dart';

class PinController extends GetxController {
  late TextEditingController pin;
  late RxList<Map<String, dynamic>> pins;
  late List<dynamic> inputNumbers;
  late String title;

  final GetStorage storage = GetStorage();

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
    title = (Get.arguments?['title'] ?? "Silahkan Buat PIN");

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

  void onPinsFilled(String routeName) {
    if(pins.every((pin) => pin['filled'] == true && pin['value'] != -1)) {
      storage.write("isLoggedIn", true);
      Get.toNamed(routeName);
    }
  }
}
