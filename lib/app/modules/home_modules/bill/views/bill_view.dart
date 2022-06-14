import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bill_controller.dart';

class BillView extends GetView<BillController> {
  const BillView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0897A5),
        title: Text(
          'Tagihan',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Text(
          'BillView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
