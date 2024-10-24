import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:idoo/app/services/base_api_service.dart';

class GamesApiConsumer extends BaseApiService {
  GetStorage box = GetStorage();

  Future<Response> getVoucherList(String providerCode) async {
    return await post('/open-display-case', {
      "providerCode": providerCode
    }, headers: {
      "Authorization": "Bearer ${box.read("creds")['accessToken']}"
    });
  }
}
