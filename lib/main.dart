import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

void main() async {

  await GetStorage.init();

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Color(0xff0897A5),
            titleTextStyle: TextStyle(fontSize: 16, fontFamily: 'Montserrat')),
        scaffoldBackgroundColor: const Color(0xFFF1F1F1),
        fontFamily: 'Montserrat',
      ),
    ),
  );
}
