import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final _menu = [
    {
      'path': "assets/svg/icons/pulsa.svg",
      'title': "Pulsa & Data",
      'route': Routes.PULSA
    },
    {
      'path': "assets/svg/icons/bill.svg",
      'title': "Tagihan",
      'route': Routes.BILL
    },
    {
      'path': "assets/svg/icons/electricity.svg",
      'title': "Listrik",
      'route': Routes.E_WALLET
    },
    {
      'path': "assets/svg/icons/plane.svg",
      'title': "Travel",
      'route': Routes.TRAVEL
    },
    {
      'path': "assets/svg/icons/e-wallet.svg",
      'title': "E-Wallet",
      'route': Routes.E_WALLET
    },
    {
      'path': "assets/svg/icons/game.svg",
      'title': "Game",
      'route': Routes.GAMES
    },
    {
      'path': "assets/svg/icons/calendar.svg",
      'title': "Angsuran",
      'route': Routes.INSTALLMENT
    },
    {
      'path': "assets/svg/icons/all-menu.svg",
      'title': "All Product",
      'route': Routes.E_WALLET
    },
  ];

  List get menu => _menu;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}