import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OtpController extends GetxController {
  late TextEditingController otp;

  @override
  void onInit() {
    super.onInit();
    otp = TextEditingController();
  }

  @override
  void onClose() {
    otp.dispose();
  }
}
