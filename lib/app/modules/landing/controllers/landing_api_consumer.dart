import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get_storage/get_storage.dart';
import 'package:idoo/app/services/base_api_service.dart';

class LandingApiConsumer extends BaseApiService {
  GetStorage box = GetStorage();

  Future<Response> verifyToken() async {

    Map<String, dynamic> creds = box.read("creds");
    
    final Response response = await post('/verify-refresh-token', {}, headers: {
      "Authorization": "Bearer ${creds["refreshToken"]}"
    });

    return response;
  }
}