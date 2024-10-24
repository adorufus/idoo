import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idoo/app/modules/auth_modules/login/controllers/login_controller.dart';

class PhoneInputWidget extends StatelessWidget {
  final TextEditingController controller;

  PhoneInputWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 334,
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 94,
                  height: 39,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xffe8feff),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/icons/ina-flag.png'),
                      Text(
                        "+62",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff0897A5)),
                      )
                    ],
                  ),
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
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: "Nomor HP",
                        border: InputBorder.none,
                      ),
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
          Text(
            "Ada kendala dengan nomor hp saya",
            style: TextStyle(fontSize: 12, color: Color(0xff0897A5)),
          )
        ],
      ),
    );
  }
}
