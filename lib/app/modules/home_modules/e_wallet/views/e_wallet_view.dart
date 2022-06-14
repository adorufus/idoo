import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/e_wallet_controller.dart';

class EWalletView extends GetView<EWalletController> {
  const EWalletView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0897A5),
        title: Text(
          'E-Wallet',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Text(
          'EWalletView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
