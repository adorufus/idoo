import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idoo/app/modules/home_modules/e_wallet_modules/e_wallet/controllers/e_wallet_controller.dart';

import '../../../../../routes/app_pages.dart';

class MenuCardWidget extends GetView<EWalletController> {
  MenuCardWidget(this.title, this.subtitle, this.iconPath);

  final String title, subtitle, iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Get.toNamed(Routes.E_WALLET_DETAIL),
          child: Container(
              width: 384,
              height: 126,
              padding: EdgeInsets.only(right: 10),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.transparent,
                    child: Image.asset(
                      iconPath,
                      scale: 1.5,
                    ),
                  ),
                  title: Text(title,
                      style: TextStyle(
                          color: Color(0xff0897A5),
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text(subtitle,
                      style: TextStyle(color: Color(0xff565656), fontSize: 14)),
                ),
              )),
        ),
      ),
    );
  }
}
