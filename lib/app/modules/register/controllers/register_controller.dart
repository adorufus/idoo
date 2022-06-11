import 'package:get/get.dart';
import 'package:flutter/material.dart';

class RegisterController extends GetxController {
  late TextEditingController name,
      phoneNumber,
      city,
      district,
      subDistrict,
      refferalCode;

  @override
  void onInit() {
    super.onInit();
    name = TextEditingController();
    phoneNumber = TextEditingController();
    city = TextEditingController();
    district = TextEditingController();
    subDistrict = TextEditingController();
    refferalCode = TextEditingController();
  }

  @override
  void onClose() {
    name.dispose();
    phoneNumber.dispose();
    city.dispose();
    district.dispose();
    subDistrict.dispose();
    refferalCode.dispose();
  }
}
