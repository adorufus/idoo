import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pulsa_controller.dart';

class PulsaView extends GetView<PulsaController> {
  const PulsaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0897A5),
        title: Text(
          'Pulsa & Data',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Text(
          'PulsaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
