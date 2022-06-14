import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:idoo/app/modules/main_modules/about/views/about_view.dart';
import 'package:idoo/app/modules/main_modules/history/views/history_view.dart';
import 'package:idoo/app/modules/home_modules/home/views/home_view.dart';
import 'package:idoo/app/modules/profile_modules/profile/views/profile_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          width: 68,
          height: 68,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {},
              // tooltip: "Centre FAB",
              backgroundColor: Color(0xff21BAC9),
              child: Container(child: Icon(Icons.qr_code)),
              elevation: 0.0,
            ),
          ),
        ),
        bottomNavigationBar: buildBottomNavBar(context),
        body: Obx(() => IndexedStack(
              index: controller.currentTab.value,
              children: [HomeView(), HistoryView(), AboutView(), ProfileView()],
            )));
  }

  navBarItem(int idx, String title, String iconPath) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () => controller.changeScreen(idx),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          SvgPicture.asset(
            iconPath,
            height: 20,
            fit: BoxFit.scaleDown,
            color: controller.currentTab.value == idx
                ? Color(0xff0897A5)
                : Colors.grey,
          ),
          SizedBox(
            height: 5,
          ),
          Text(title,
              style: TextStyle(
                  color: controller.currentTab.value == idx
                      ? Color(0xff0897A5)
                      : Colors.grey))
        ],
      ),
    );
  }

  buildBottomNavBar(context) {
    return BottomAppBar(
      // shape: CircularNotchedRectangle(),
      // notchMargin: 10,
      child: Obx(
        () => Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  navBarItem(0, "Home", 'assets/svg/navbar/home.svg'),
                  navBarItem(1, "History", 'assets/svg/navbar/history.svg'),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  navBarItem(2, "About", 'assets/svg/navbar/about.svg'),
                  navBarItem(3, "Profile", 'assets/svg/navbar/profile.svg'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
