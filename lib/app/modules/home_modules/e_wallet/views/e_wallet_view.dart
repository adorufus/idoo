import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/e_wallet_controller.dart';
import '../widgets/menu_card_widget.dart';

class EWalletView extends GetView<EWalletController> {
  const EWalletView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'E-Wallet',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              MenuCardWidget("Gopay", "Tidak 24 jam, gratis admin",
                  'assets/images/icons/gopay.png'),
              SizedBox(
                height: 20,
              ),
              MenuCardWidget("OVO", "Online 24 jam, admin Rp 1.000",
                  'assets/images/icons/ovo.png'),
              SizedBox(height: 20),
              MenuCardWidget("DANA", "Via Alfamart/Indomart, admin Rp 2.000",
                  'assets/images/icons/dana.png'),
              SizedBox(height: 20),
              MenuCardWidget("LINK AJA", "Gopay, OVO, LinkAja, Shopeepay",
                  'assets/images/icons/link-aja.png'),
            ],
          ),
        ));
  }
}
