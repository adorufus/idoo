import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idoo/app/modules/register/widgets/city_input_widget.dart';
import 'package:idoo/app/modules/register/widgets/district_input_widget.dart';
import 'package:idoo/app/modules/register/widgets/name_input_widget.dart';
import 'package:idoo/app/modules/register/widgets/phone_input_widget.dart';
import 'package:idoo/app/modules/register/widgets/referral_input_widget.dart';
import 'package:idoo/app/modules/register/widgets/subdistrict_input_widget.dart';

import '../../../global_widgets/general_button.dart';
import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff898989)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text("Register", style: TextStyle(fontSize: 24)),
                )),
            SizedBox(height: 50),
            Column(
              children: [
                NameInputWidget(),
                PhoneInputWidget(),
                CityInputWidget(),
                DistrictInputWidget(),
                SubDistrictInputWidget(),
                ReferralInputWidget(),
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Container(
                    width: 26,
                    height: 26,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffCDFBFF),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      "Saya telah membaca & menyetujui Syarat & Ketentuan yang berlaku",
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            GeneralButton("Daftar", () => Get.toNamed(Routes.OTP), 0xff0897A5,
                Colors.white),
          ],
        ),
      ),
    );
  }
}
