import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:idoo/app/modules/home_modules/pulsa/widgets/pulsa_tab_widget/pulsa_tab_widget_controller.dart';

class PulsaTabWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PulsaTabWidgetController tabC = Get.put(PulsaTabWidgetController());
    // ↑ init tab controller

    return Container(
      width: MediaQuery.of(context).size.width - 5,
      height: 39,
      color: Colors.white,
      child: TabBar(
          isScrollable: true,
          controller: tabC.tabController,
          indicator: BoxDecoration(
              color: Color(0xff0897A5),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  topLeft: Radius.circular(5.0))),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey.shade400,
          tabs: [
            SizedBox(
              width: 140,
              child: Tab(
                child: Center(
                    child: Text("Pulsa",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))),
              ),
            ),
            SizedBox(
              width: 140,
              child: Tab(
                child: Center(
                    child: Text("Paket Data",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))),
              ),
            ),
            SizedBox(
              width: 140,
              child: Tab(
                child: Center(
                    child: Text("Paket Telpon",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))),
              ),
            ),
            SizedBox(
              width: 140,
              child: Tab(
                child: Center(
                    child: Text("Paket SMS",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))),
              ),
            ),
          ]),
    );
  }
}
