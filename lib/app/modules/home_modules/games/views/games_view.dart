import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/games_controller.dart';

class GamesView extends GetView<GamesController> {
  const GamesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0897A5),
        title: Text(
          'Games',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Text(
          'GamesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
