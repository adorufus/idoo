import 'package:get/get.dart';

class BaseApiService extends GetConnect {
  @override
  void onInit() {
    super.onInit();
    baseUrl = "https://92e9-180-243-71-32.ngrok-free.app/sunflower/api/v1/everything";
  }
}