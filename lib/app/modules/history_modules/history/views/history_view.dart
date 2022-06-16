import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idoo/app/modules/history_modules/history/widgets/history_tab_widget/history_tab_widget.dart';
import 'package:idoo/app/modules/history_modules/history/widgets/history_tab_widget/history_tabview_widget.dart';

import '../controllers/history_controller.dart';
import 'dart:math' as math;

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Riwayat',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Urut Berdasarkan",
                            style: TextStyle(
                                color: Color(0xff454545), fontSize: 10)),
                        SizedBox(height: 10),
                        Container(
                          width: 376,
                          height: 48,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffe8feff),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Terbaru",
                                    style: TextStyle(
                                        color: Color(0xff454545),
                                        fontSize: 12)),
                                Transform.rotate(
                                    angle: 270 * math.pi / 180,
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Color(0xff454545),
                                      size: 14,
                                    )),
                              ]),
                        ),
                      ],
                    ),
                    HistoryTabWidget()
                  ],
                ),
              ),
            ),
            HistoryTabViewWidget(),
          ],
        ));
  }
}
