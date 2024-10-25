import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idoo/app/constants/colors.dart';

class SunflowerSnackbar {
  final String message;

  SunflowerSnackbar({required this.message});

  error() {
    Get.snackbar("Error", message,
        backgroundColor: AppColors.red, colorText: Colors.white);
  }

  success() {
    Get.snackbar("Sukses", message,
        backgroundColor: AppColors.green, colorText: Colors.white);
  }

  info() {
    Get.snackbar("Perhatian", message,
        backgroundColor: AppColors.warning, colorText: AppColors.warningText);
  }
}
