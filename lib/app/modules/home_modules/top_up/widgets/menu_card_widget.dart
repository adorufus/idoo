import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:idoo/app/modules/home_modules/top_up/controllers/top_up_controller.dart';

class MenuCardWidget extends GetView<TopUpController> {
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
          onTap: () {},
          child: Container(
              width: 384,
              height: 126,
              padding: EdgeInsets.only(right: 10),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.transparent,
                    child: SvgPicture.asset(iconPath, height: 100),
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
