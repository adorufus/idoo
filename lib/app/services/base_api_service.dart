import 'package:get/get.dart';

class BaseApiService extends GetConnect {
  @override
  void onInit() {
    super.onInit();
    baseUrl = "https://0232-182-2-136-152.ngrok-free.app/sunflower/api/v1/everything";
  }
}