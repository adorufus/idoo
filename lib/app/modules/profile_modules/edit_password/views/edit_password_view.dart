import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idoo/app/constants/colors.dart';
import 'package:idoo/app/global_widgets/general_button.dart';

import '../controllers/edit_password_controller.dart';
import '../widgets/password_input_widget.dart';

class EditPasswordView extends GetView<EditPasswordController> {
  const EditPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ubah Password',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(children: [
        Container(
          height: 330,
          color: Colors.white,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PasswordInputWidget("Password Lama"),
              SizedBox(height: 20),
              PasswordInputWidget("Password Baru"),
              SizedBox(height: 20),
              PasswordInputWidget("Konfirmasi Password Baru"),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text("Lupa Password Lama?",
                      style: TextStyle(
                          color: Color(0xff454545),
                          fontSize: 10,
                          decoration: TextDecoration.underline)),
                ),
              )
            ],
          )),
        ),
        SizedBox(height: 30),
        GeneralButton("Simpan", () {}, AppColors.primary, Colors.white)
      ]),
    );
  }
}
