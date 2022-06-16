import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idoo/app/modules/home_modules/e_wallet_modules/e_wallet_detail/widgets/e_wallet_tab_widget/e_wallet_tab_widget.dart';
import 'package:idoo/app/modules/home_modules/e_wallet_modules/e_wallet_detail/widgets/e_wallet_tab_widget/e_wallet_tabview_widget.dart';
import 'package:idoo/app/modules/home_modules/e_wallet_modules/e_wallet_detail/widgets/id_input_widget.dart';
import 'package:idoo/app/modules/home_modules/e_wallet_modules/e_wallet_detail/widgets/nominal_input_widget.dart';

import '../controllers/e_wallet_detail_controller.dart';

class EWalletDetailView extends GetView<EWalletDetailController> {
  const EWalletDetailView({Key? key}) : super(key: key);
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
              height: 380,
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
                            child: Text("E-Wallet",
                                style: TextStyle(
                                    color: Color(0xff0897A5),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(height: 30),
                        IdInputWidget(),
                        SizedBox(height: 30),
                        NominalInputWidget(),
                      ],
                    ),
                    EWalletTabWidget()
                  ],
                ),
              ),
            ),
            EWalletTabViewWidget()
          ],
        ));
  }
}
