import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:idoo/app/modules/home_modules/e_wallet_modules/e_wallet_detail/widgets/e_wallet_tab_widget/e_wallet_tab_widget_controller.dart';

class EWalletTabWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final EWalletTabWidgetController tabC =
        Get.put(EWalletTabWidgetController());
    // ↑ init tab controller

    return Container(
      width: MediaQuery.of(context).size.width - 5,
      height: 48,
      color: Colors.white,
      child: TabBar(
          controller: tabC.tabController,
          indicator: BoxDecoration(
              color: Color(0xff0897A5),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  topLeft: Radius.circular(5.0))),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey.shade400,
          tabs: [
            Tab(
              child: Center(
                  child: Text("Customer",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold))),
            ),
            Tab(
              child: Center(
                  child: Text("Driver",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold))),
            ),
          ]),
    );
  }
}
