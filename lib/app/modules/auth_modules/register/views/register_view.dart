import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idoo/app/modules/auth_modules/register/widgets/city_input_widget.dart';
import 'package:idoo/app/modules/auth_modules/register/widgets/district_input_widget.dart';
import 'package:idoo/app/modules/auth_modules/register/widgets/name_input_widget.dart';
import 'package:idoo/app/modules/auth_modules/register/widgets/phone_input_widget.dart';
import 'package:idoo/app/modules/auth_modules/register/widgets/referral_input_widget.dart';
import 'package:idoo/app/modules/auth_modules/register/widgets/subdistrict_input_widget.dart';

import '../../../../global_widgets/general_button.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xff898989)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
              Container(
                width: MediaQuery.of(context).size.width - 80,
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
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        "Saya telah membaca & menyetujui Syarat & Ketentuan yang berlaku",
                        maxLines: 2,
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
      ),
    );
  }
}
