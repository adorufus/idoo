import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idoo/app/constants/colors.dart';
import 'package:idoo/app/global_widgets/general_button.dart';
import 'package:idoo/app/modules/auth_modules/login/widgets/phone_input_widget.dart';

import '../../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xff898989)),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 30),
                  Text("Selamat Datang", style: TextStyle(fontSize: 24)),
                  SizedBox(height: 100),
                  PhoneInputWidget(
                    controller: controller.phoneNumber,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    width: 228,
                    child: Text(
                      "Dengan klik masuk, berarti kamu menyetujui Syarat & Ketentuan iDoo ya!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  SizedBox(height: 20),
                  GeneralButton("Masuk", () => controller.onLogin(),
                      AppColors.primary, Colors.white),
                  SizedBox(height: 10),
                  Container(
                    width: 228,
                    child: Text(
                      "Belum punya akun?",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  SizedBox(height: 10),
                  GeneralButton("Daftar", () => Get.toNamed(Routes.REGISTER),
                      AppColors.accent, Colors.white),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
