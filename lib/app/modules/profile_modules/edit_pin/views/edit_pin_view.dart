import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idoo/app/constants/colors.dart';
import 'package:idoo/app/modules/profile_modules/edit_pin/widgets/pin_input_widget.dart';

import '../../../../global_widgets/general_button.dart';
import '../controllers/edit_pin_controller.dart';

class EditPinView extends GetView<EditPinController> {
  const EditPinView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ubah PIN',
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
              PinInputWidget("PIN Lama"),
              SizedBox(height: 20),
              PinInputWidget("PIN Baru"),
              SizedBox(height: 20),
              PinInputWidget("Konfirmasi PIN Baru"),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text("Lupa PIN Lama?",
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
