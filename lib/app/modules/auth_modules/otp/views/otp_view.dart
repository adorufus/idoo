import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idoo/app/modules/auth_modules/otp/widgets/otp_input_widget.dart';

import '../../../../global_widgets/general_button.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
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
                  Text("Masukkan Kode OTP", style: TextStyle(fontSize: 24)),
                  SizedBox(height: 100),
                  OtpInputWidget()
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  SizedBox(height: 20),
                  GeneralButton("Kirim", () => Get.toNamed(Routes.PIN, arguments: {
                    'title': 'Silahkan Buat PIN'
                  }),
                      0xff0897A5, Colors.white),
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
