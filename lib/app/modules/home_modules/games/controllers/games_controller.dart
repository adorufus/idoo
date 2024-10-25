import 'package:get/get.dart';
import 'package:idoo/app/modules/home_modules/games/controllers/games_api_consumer.dart';
import 'package:idoo/app/routes/app_pages.dart';

class GamesController extends GetxController {
  List<dynamic> gamesList = [];
  GamesApiConsumer apiConsumer = Get.find<GamesApiConsumer>();

  @override
  void onInit() {
    super.onInit();
    gamesList = Get.arguments?["columns"] ?? [];

    print("Game List ${gamesList[0]["columnIcon"]}");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onProviderSelected(String providerCode) {
    apiConsumer.getVoucherList(providerCode).then((res) {
      print(res.body);

      Get.toNamed(Routes.GAMES_PROVIDER, arguments: {
        "products": res.body["products"],
      });
    });
  }
}
