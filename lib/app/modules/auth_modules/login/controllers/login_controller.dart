import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:idoo/app/routes/app_pages.dart';
import 'package:idoo/app/services/snackbar_service.dart';

class LoginController extends GetxController {
  late TextEditingController phoneNumber;

  @override
  void onInit() {
    super.onInit();
    print("login controller init");
    phoneNumber = TextEditingController();
  }

  @override
  void onClose() {
    
  }

  void onLogin() {
    if (phoneNumber.text.isNotEmpty) {
      Get.toNamed(Routes.PIN, arguments: {
        "title": "Masukan PIN",
        "phone": phoneNumber.text,
        "current_context": Routes.LOGIN
      });
    } else {
      SunflowerSnackbar(message: "Masukan Nomor Telepon Anda").info();
    }
  }
}
