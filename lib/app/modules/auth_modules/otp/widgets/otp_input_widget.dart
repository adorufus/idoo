import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idoo/app/modules/auth_modules/otp/controllers/otp_controller.dart';

class OtpInputWidget extends GetView<OtpController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 334,
      child: Column(
        children: [
          Container(
            height: 39,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.phonelink_lock_outlined,
                  color: Color(0xffC4C4C4),
                ),
                SizedBox(
                  width: 20,
                ),
                VerticalDivider(
                  thickness: 1.0,
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 220,
                  height: 39,
                  child: TextField(
                      autocorrect: false,
                      keyboardType: TextInputType.number,
                      controller: controller.otp,
                      decoration: InputDecoration(
                          hintText: "Kode OTP",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: -5)),
                      onEditingComplete: () {}),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Divider(
                thickness: 1.0,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tidak menerima kode? ",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              Text(
                "Kirim Ulang",
                style: TextStyle(fontSize: 12, color: Color(0xff0897A5)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
