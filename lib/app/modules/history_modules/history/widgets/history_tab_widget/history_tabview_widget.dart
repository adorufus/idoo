import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:idoo/app/modules/history_modules/history/widgets/history_tab_widget/history_tab_widget_controller.dart';

import '../../../../../routes/app_pages.dart';

class HistoryTabViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HistoryTabWidgetController tabC =
        Get.put(HistoryTabWidgetController());
    // ↑ init tab controller

    return Expanded(
      child: TabBarView(controller: tabC.tabController, children: [
        ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 30),
            itemCount: [1, 2, 3, 4].length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        "Maret 2022",
                        style: TextStyle(
                            color: Color(0xff0897A5),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Colors.grey.shade300))),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => Get.toNamed(Routes.HISTORY_DETAIL),
                          child: Container(
                            height: 82,
                            child: ListTile(
                              title: Text("Paket Nelpon TSEL 10 Jam",
                                  style: TextStyle(
                                      color: Color(0xff454545),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text("Selasa, 8 Maret 2022, 12.23 WIB",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 12)),
                              trailing: Text("-Rp 10.123",
                                  style: TextStyle(
                                      color: Color(0xff009F3C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Colors.grey.shade300))),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => Get.toNamed(Routes.HISTORY_DETAIL),
                          child: Container(
                            height: 82,
                            child: ListTile(
                              title: Text("Top Up Saldo 100K",
                                  style: TextStyle(
                                      color: Color(0xff454545),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text("Selasa, 8 Maret 2022, 12.23 WIB",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 12)),
                              trailing: Text("+Rp 100.000",
                                  style: TextStyle(
                                      color: Color(0xff009F3C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => Get.toNamed(Routes.HISTORY_DETAIL),
                          child: Container(
                            height: 82,
                            child: ListTile(
                              title: Text("Top Up Saldo 100K",
                                  style: TextStyle(
                                      color: Color(0xff454545),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text("Selasa, 8 Maret 2022, 12.23 WIB",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 12)),
                              trailing: Text("GAGAL",
                                  style: TextStyle(
                                      color: Color(0xffF22F2F),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
        ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 30),
            itemCount: [1, 2, 3, 4].length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        "Januari 2022",
                        style: TextStyle(
                            color: Color(0xff0897A5),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => Get.toNamed(Routes.HISTORY_DETAIL),
                          child: Container(
                            height: 82,
                            child: ListTile(
                              title: Text("Top Up Saldo 100K",
                                  style: TextStyle(
                                      color: Color(0xff454545),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text("Selasa, 8 Maret 2022, 12.23 WIB",
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 12)),
                              trailing: Text("+Rp 100.000",
                                  style: TextStyle(
                                      color: Color(0xff009F3C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ]),
    );
  }
}
