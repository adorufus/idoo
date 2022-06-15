import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:idoo/app/modules/home_modules/bill/controllers/bill_controller.dart';

class MenuListTileWidget extends GetView<BillController> {
  MenuListTileWidget(this.title, this.subtitle, this.iconPath);

  final String title, subtitle, iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.grey.shade300),
          ),
          color: Colors.white),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Container(
              width: 384,
              height: 80,
              padding: EdgeInsets.only(right: 10),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    child: SvgPicture.asset(iconPath, height: 40),
                  ),
                  trailing: Transform.scale(
                      scaleX: -1,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff0897A5),
                        size: 20,
                      )),
                  title: Text(title,
                      style: TextStyle(
                          color: Color(0xff0897A5),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text(subtitle,
                      style: TextStyle(color: Color(0xff565656), fontSize: 12)),
                ),
              )),
        ),
      ),
    );
  }
}
