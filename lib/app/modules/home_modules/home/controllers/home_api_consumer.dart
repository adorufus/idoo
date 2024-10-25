import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:idoo/app/services/base_api_service.dart';

class HomeApiConsumer extends BaseApiService {
  GetStorage box = GetStorage();

  Future<Response> getBalance(String type) async {
    Map<String, dynamic> creds = box.hasData("creds") ? box.read("creds") : {};

    return await get(type,
        headers: {"Authorization": "Bearer ${creds["accessToken"]}"});
  }

  Future<Response> getProducts() async {
    Map<String, dynamic> creds = box.hasData("creds") ? box.read("creds") : {};

    return await post(
        '/view-display-case', {"customizationId": 3, "applicationId": 1},
        headers: {"Authorization": "Bearer ${creds["accessToken"]}"});
  }
}
