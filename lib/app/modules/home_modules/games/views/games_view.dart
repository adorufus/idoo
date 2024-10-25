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
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.all(20),
        child: GridView.builder(
            itemCount: controller.gamesList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, crossAxisSpacing: 20, mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  controller.onProviderSelected(
                      controller.gamesList[index]["providerCode"]);
                },
                child: Container(
                  height: 69,
                  width: 81,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child:
                      Image.network(controller.gamesList[index]['columnIcon']),
                ),
              );
            }),
      ),
    );
  }
}
