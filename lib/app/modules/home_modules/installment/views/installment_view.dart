import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/installment_controller.dart';

class InstallmentView extends GetView<InstallmentController> {
  const InstallmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0897A5),
        title: Text(
          'Angsuran',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Text(
          'InstallmentView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
