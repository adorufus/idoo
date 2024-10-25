import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idoo/app/modules/home_modules/pulsa//widgets/phone_input_widget.dart';
import 'package:idoo/app/modules/home_modules/pulsa/widgets/pulsa_tab_widget/pulsa_tab_widget.dart';
import 'package:idoo/app/modules/home_modules/pulsa/widgets/pulsa_tab_widget/pulsa_tabview_widget.dart';

import '../controllers/pulsa_controller.dart';

class PulsaView extends GetView<PulsaController> {
  const PulsaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color(0xff898989)),
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              color: Colors.white,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text("Pulsa & Data",
                                style: TextStyle(
                                    color: Color(0xff0897A5),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(height: 30),
                        PhoneInputWidget(
                          controller: controller.phoneController,
                        ),
                      ],
                    ),
                    PulsaTabWidget()
                  ],
                ),
              ),
            ),
            PulsaTabViewWidget()
          ],
        ));
  }
}
