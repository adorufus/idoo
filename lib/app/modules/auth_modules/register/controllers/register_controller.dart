import 'dart:io';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:idoo/app/constants/colors.dart';
import 'package:idoo/app/routes/app_pages.dart';
import 'package:idoo/app/services/snackbar_service.dart';

class RegisterController extends GetxController {
  late TextEditingController name, phoneNumber, area, refferalCode;

  RxBool agree = false.obs;

  @override
  void onInit() {
    super.onInit();
    name = TextEditingController();
    phoneNumber = TextEditingController();
    area = TextEditingController();
    refferalCode = TextEditingController();
  }

  @override
  void onClose() {
    name.dispose();
    phoneNumber.dispose();
    area.dispose();
    refferalCode.dispose();
  }

  //Function for checking required fields
  bool fieldChecker() {
    return name.text.isNotEmpty && phoneNumber.text.isNotEmpty;
  }

  //Function for compiling register field (nullable)
  Map<String, dynamic>? compiledRegisterData() {
    if (fieldChecker()) {
      Map<String, dynamic> data = {
        "applicationId": 1,
        "locationId": 1,
        "addressId": 1,
        "roleId": 1,
        "username": name.text,
        "phoneNumber": phoneNumber.text,
        "platform": Platform.isAndroid ? "ANDROID" : "IOS"
      };

      if (refferalCode.text.isNotEmpty) {
        data["refferalCode"] = refferalCode.text;
        return data;
      } else if (area.text.isNotEmpty) {
        data["area"] = area.text;

        return data;
      } else if (area.text.isNotEmpty && refferalCode.text.isNotEmpty) {
        data["refferalCode"] = refferalCode.text;
        data["area"] = area.text;

        return data;
      }

      return data;
    }

    return null;
  }

  bool validateUsername() {
    RegExp usernameRegExp =
        RegExp(r'^[a-zA-Z0-9](?!.*__)[a-zA-Z0-9_]{1,14}[a-zA-Z0-9]$');

    return usernameRegExp.hasMatch(name.text);
  }

  void onProceed() {
    //create storage box to store registration field
    GetStorage box = GetStorage();

    //First check if required fields are not Empty
    if (fieldChecker()) {
      if (validateUsername()) {
        //next check if user checked the agreements
        if (agree.value == true) {
          //save field inputs into storage
          box.write("register_data", compiledRegisterData()).then((_) {
            //then navigate to create pin page
            Get.toNamed(Routes.PIN, arguments: {
              "title": "Silahkan Buat PIN",
              "current_context": Routes.REGISTER
            });
          });
        } else {
          //show info message if user not checking the agreement
          SunflowerSnackbar(message: "Silahkan setujui syarat dan ketentuan")
              .info();
        }
      } else {
        SunflowerSnackbar(
                message:
                    "Username hanya boleh berisi huruf, angka, dan underscore (_)")
            .info();
      }
    } else {
      //show info message if user not yet filled required forms
      SunflowerSnackbar(message: "Ada form yang belum di isi").info();
    }
  }
}
