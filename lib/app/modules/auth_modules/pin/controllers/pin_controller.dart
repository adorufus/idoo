import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:idoo/app/constants/colors.dart';
import 'package:idoo/app/modules/auth_modules/pin/controllers/pin_api_consumer.dart';
import 'package:idoo/app/routes/app_pages.dart';
import 'package:idoo/app/services/snackbar_service.dart';

class PinController extends GetxController {
  // late TextEditingController pin;
  late RxList<Map<String, dynamic>> pins;
  late List<dynamic> inputNumbers;
  late String title;
  late String current_context;

  final GetStorage storage = GetStorage();
  PinApiConsumer apiConsumer = Get.find<PinApiConsumer>();

  @override
  void onInit() {
    super.onInit();
    // pin = TextEditingController();
    pins = [
      {"value": -1, "filled": false},
      {"value": -1, "filled": false},
      {"value": -1, "filled": false},
      {"value": -1, "filled": false},
      {"value": -1, "filled": false},
      {"value": -1, "filled": false},
    ].obs;

    current_context = (Get.arguments?['current_context'] ?? "");
    title = (Get.arguments?['title'] ?? "Silahkan Buat PIN");

    inputNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, "", 0, "delete"];
  }

  @override
  void onClose() {
    // pin.dispose();
    pins = [
      {"value": -1, "filled": false},
      {"value": -1, "filled": false},
      {"value": -1, "filled": false},
      {"value": -1, "filled": false},
    ].obs;
  }

  void onClear() {
    for (var pin in pins) {
      if (pin["filled"]) {
        pin['value'] = -1;
        pin['filled'] = false;
      }
    }
  }

  void onPinsFilled(String routeName) {
    if (pins.every((pin) => pin['filled'] == true && pin['value'] != -1)) {
      if (current_context == Routes.REGISTER) {
        onRegister();
      } else if (current_context == Routes.LOGIN) {
        onLogin(routeName);
      } else {
        onLogin(routeName);
      }
    }
  }

  void onSuccess(String routeName) {
    storage.write("isLoggedIn", true);
    Get.offAllNamed(routeName, arguments: {"current_context": current_context});

    onClear();
    pins.refresh();
  }

  void onRegister() {
    Map<String, dynamic> data = storage.read("register_data");

    data["pin"] = pinJoiners();

    apiConsumer.doRegister(data).then((res) {
      print(res.body);
      if (res.statusCode != 200) {
        if (res.body["reasons"][0] ==
            "[user with the same email or username already exists]") {
          SunflowerSnackbar(message: "Username telah terdaftar!").info();
          return;
        }

        SunflowerSnackbar(message: "Kesalahan Sistem").error();
      } else {
        Get.toNamed(Routes.OTP,
            arguments: {"current_context": current_context});
      }
    });
  }

  void onLogin(String routeName) {
    String phoneNumber = Get.arguments['phone'] ?? "";
    GetStorage box = GetStorage();

    //called when reopening app
    if (current_context == Routes.LANDING) {
      Map<String, dynamic> creds = box.read("creds") ?? {};

      apiConsumer.pinChecker(pinJoiners()).then((res) {
        print(res.body);

        if (res.statusCode != 200) {
          SunflowerSnackbar(message: "Kesalahan Sistem").error();
        } else {
          if (creds.isNotEmpty) {
            creds["accessToken"] = res.body["accessToken"];
            creds["refreshToken"] = res.body["refreshToken"];
          } else {
            creds = res.body;
          }

          box.write("creds", creds);
          onSuccess(routeName);
        }
      });
    }

    //called when relogin / or expired
    if (phoneNumber.isNotEmpty) {
      apiConsumer.doLogin(phoneNumber, pinJoiners()).then((res) {
        if (res.statusCode != 200) {
          print(res.body);
          if (res.body["reasons"][0] == "[verify otp first]") {
            box.write("temp_auth_data", {"phoneNumber": phoneNumber});
            onSuccess(routeName);
          }
        } else {
          Map<String, dynamic> tempAuthData = res.body;
          tempAuthData["phoneNumber"] = phoneNumber;

          box.write("temp_auth_data", tempAuthData);

          print(res.body);
          onSuccess(routeName);
        }
      });
    } else {
      // Get.toNamed(routeName);
    }
  }

  String pinJoiners() {
    return pins.map((pin) => pin["value"].toString()).join();
  }
}
