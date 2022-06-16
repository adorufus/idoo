import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:idoo/app/modules/home_modules/e_wallet_modules/e_wallet/controllers/e_wallet_controller.dart';

class IdInputWidget extends GetView<EWalletController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("ID Pelanggan",
            style: TextStyle(color: Color(0xff454545), fontSize: 10)),
        SizedBox(height: 10),
        Container(
          width: 376,
          height: 48,
          child: TextField(
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                hintText: "Contoh: 089520401924",
                filled: true, // Needed for adding a fill color
                fillColor: Color(0xff0ffe8feff),
                isDense: true, // Reduces height a bit
                border: OutlineInputBorder(
                  borderSide: BorderSide.none, // No border
                  borderRadius: BorderRadius.circular(8), // Apply corner radius
                ),
                prefixIcon: SvgPicture.asset('assets/svg/icons/contact.svg',
                    height: 30, fit: BoxFit.scaleDown)),
          ),
        ),
      ],
    );
  }
}
