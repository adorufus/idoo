import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:idoo/app/modules/home_modules/home/controllers/home_api_consumer.dart';

import '../../../../routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  GetStorage box = GetStorage();
  HomeApiConsumer apiConsumer = Get.find<HomeApiConsumer>();

  RxString personalBalance = "".obs;
  RxString personalPoint = "".obs;
  RxString personalKomis = "".obs;

  List menu = [
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

  // List get menu => _menu;

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    initPersonalData();
  }

  @override
  void onClose() {}

  void initPersonalData() {
    apiConsumer.getBalance('/get-balance').then((res) {
      print(res.body);

      if (res.statusCode != 200) {
        print(res.body);
      } else {
        personalBalance.value = res.body["totalBalance"].toString();

        personalBalance.refresh();
      }
    });

    apiConsumer.getBalance('/get-point').then((res) {
      print(res.body);

      if (res.statusCode != 200) {
        print(res.body);
      } else {
        personalPoint.value = res.body["totalPoint"].toString();

        personalPoint.refresh();
      }
    });

    apiConsumer.getBalance('/get-commission').then((res) {
      print(res.body);

      if (res.statusCode != 200) {
        print(res.body);
      } else {
        personalKomis.value = res.body["totalCommission"].toString();

        personalKomis.refresh();
      }
    });
  }
}
