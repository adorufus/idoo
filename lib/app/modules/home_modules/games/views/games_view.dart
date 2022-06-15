import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/games_controller.dart';

class GamesView extends GetView<GamesController> {
  const GamesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Games',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
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
