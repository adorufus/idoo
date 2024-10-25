import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idoo/app/constants/colors.dart';
import 'package:idoo/app/modules/auth_modules/register/controllers/register_controller.dart';

class NameInputWidget extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 334,
      height: 50,
      margin: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.1, color: Colors.grey.shade300),
        ),
      ),
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                  autocorrect: false,
                  controller: controller.name,
                  decoration: InputDecoration(
                      hintText: "Username",
                      suffixText: "*",
                      suffixStyle: TextStyle(color: AppColors.red, fontSize: 20),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: -5)),
                  onEditingComplete: () {})),
        ],
      ),
    );
  }
}
