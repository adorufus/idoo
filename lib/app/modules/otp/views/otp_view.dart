import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idoo/app/modules/otp/widgets/otp_input_widget.dart';

import '../../../global_widgets/general_button.dart';
import '../../../routes/app_pages.dart';
import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff898989)),
      ),
      body: Center(
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
                GeneralButton("Kirim", () => Get.toNamed(Routes.REGISTER),
                    0xff0897A5, Colors.white),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
