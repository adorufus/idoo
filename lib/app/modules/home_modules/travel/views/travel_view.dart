import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/travel_controller.dart';

class TravelView extends GetView<TravelController> {
  const TravelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0897A5),
        title: Text(
          'Travel',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Text(
          'TravelView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
