import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  late TextEditingController phoneNumber;

  @override
  void onInit() {
    super.onInit();
    phoneNumber = TextEditingController();
  }

  @override
  void onClose() {
    phoneNumber.dispose();
  }
}
