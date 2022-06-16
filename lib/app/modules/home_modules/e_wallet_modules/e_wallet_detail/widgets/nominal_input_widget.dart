import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:idoo/app/modules/home_modules/e_wallet_modules/e_wallet/controllers/e_wallet_controller.dart';

class NominalInputWidget extends GetView<EWalletController> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Nominal Top Up",
          style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 13,
              fontWeight: FontWeight.bold)),
      SizedBox(height: 20),
      Container(
        width: 362,
        height: 110,
        child: Column(
          children: [
            Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Rp",
                          style: TextStyle(
                              color: Color(0xff454545),
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                        style: TextStyle(
                            color: Color(0xff454545),
                            fontWeight: FontWeight.bold,
                            fontSize: 36),
                        autocorrect: false,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "100.000",
                          border: InputBorder.none,
                        ),
                        onEditingComplete: () {}),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "Min Rp 50.000",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            )
          ],
        ),
      )
    ]);
  }
}
