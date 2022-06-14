import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:idoo/app/modules/home_modules/top_up/widgets/menu_card_widget.dart';

import '../controllers/top_up_controller.dart';

class TopUpView extends GetView<TopUpController> {
  const TopUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0897A5),
          title: Text(
            'Deposit Saldo',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              MenuCardWidget("Bank Transfer", "Tidak 24 jam, gratis admin",
                  'assets/svg/icons/clap.svg'),
              SizedBox(
                height: 20,
              ),
              MenuCardWidget("Virtual Account", "Online 24 jam, admin Rp 1.000",
                  'assets/svg/icons/clap.svg'),
              SizedBox(height: 20),
              MenuCardWidget(
                  "Merchant",
                  "Via Alfamart/Indomart, admin Rp 2.000",
                  'assets/svg/icons/clap.svg'),
              SizedBox(height: 20),
              MenuCardWidget("E-Wallet", "Gopay, OVO, LinkAja, Shopeepay",
                  'assets/svg/icons/clap.svg'),
            ],
          ),
        ));
  }
}
