import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameProductController extends GetxController {
  late TextEditingController phoneController;
  late List<dynamic> products;

  List pulsa = [
    {
      'label': 'Flash Sale',
      'type': 'flash-sale',
      'items': [2, 2]
    },
    {
      'label': 'Regular',
      'type': 'regular',
      'items': [1, 2, 3, 4, 5, 6, 7, 8]
    },
  ];

  List paketData = [
    {
      'label': 'Flash Sale',
      'type': 'flash-sale',
      'items': [2]
    },
    {
      'label': 'Regular',
      'type': 'regular',
      'items': [1, 2, 3, 4, 5]
    },
  ];

  List paketTelpon = [
    {
      'label': 'Flash Sale',
      'type': 'flash-sale',
      'items': [2, 2]
    },
    {
      'label': 'Regular',
      'type': 'regular',
      'items': [1, 2, 3, 4, 5, 6]
    },
  ];

  List sms = [
    {
      'label': 'Flash Sale',
      'type': 'flash-sale',
      'items': [2, 2, 3, 4]
    },
    {
      'label': 'Regular',
      'type': 'regular',
      'items': [1, 2, 3, 4, 5, 6, 7, 8]
    },
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    phoneController = TextEditingController();
    products = Get.arguments?["products"] ?? [];

    print("Products $products");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
