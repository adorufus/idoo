import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:idoo/app/modules/auth_modules/otp/controllers/otp_api_consumer.dart';
import 'package:idoo/app/routes/app_pages.dart';
import 'package:idoo/app/services/snackbar_service.dart';

class OtpController extends GetxController {
  late TextEditingController otp;
  late String phoneNumber;
  late String current_context;
  GetStorage box = GetStorage();
  OtpApiConsumer apiConsumer = Get.find<OtpApiConsumer>();

  @override
  void onInit() {
    super.onInit();

    otp = TextEditingController();

    current_context = Get.arguments?["current_context"] ?? "";

    phoneNumber = current_context == Routes.LOGIN
        ? box.read("temp_auth_data")["phoneNumber"]
        : box.read("register_data")["phoneNumber"];
  }

  void cleanup() {
    box.remove("temp_auth_data");
  }

  @override
  void onClose() {
    otp.dispose();
    cleanup();
  }

  String getMode() {
    if (current_context == Routes.LOGIN) {
      return "LOGIN";
    } else {
      return "REGISTER";
    }
  }

  void onVerify() {
    if (otp.text.isEmpty) {
      SunflowerSnackbar(message: "Masukan Kode OTP terlebih dahulu").info();
    } else {
      apiConsumer.verifyOtp(phoneNumber, otp.text, getMode()).then((res) {
        print(res.body);

        if (res.statusCode != 200) {
          if (res.body["reasons"][0] == "[invalid otp]") {
            SunflowerSnackbar(message: "Kode OTP Salah").error();
            return;
          }

          SunflowerSnackbar(message: "Kesalahan Sistem").error();
        } else {
          box.write("creds", res.body).then((_) {
            // Get.toNamed(Routes.DASHBOARD);
            if (current_context == Routes.REGISTER) {
              SunflowerSnackbar(
                      message: "Register sukses, silahkan login kembali")
                  .success();
              Get.offNamedUntil(Routes.LOGIN, ModalRoute.withName("/landing"));
            } else {
              Get.offAllNamed(
                  Routes.DASHBOARD);
            }
          });
        }
      });
    }
  }
}
