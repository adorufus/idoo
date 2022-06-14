import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idoo/app/modules/auth_modules/register/controllers/register_controller.dart';

class DistrictInputWidget extends GetView<RegisterController> {
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
                  controller: controller.district,
                  decoration: InputDecoration(
                      hintText: "Kecamatan",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: -5)),
                  onEditingComplete: () {})),
        ],
      ),
    );
  }
}
