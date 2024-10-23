import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get_storage/get_storage.dart';
import 'package:idoo/app/services/base_api_service.dart';

class ProfileApiConsumer extends BaseApiService {

  GetStorage box = GetStorage();

  Future<Response> getProfile() async {

    Map<String, dynamic> creds = box.hasData("creds") ? box.read("creds") : {};
    
    return await get('/get-profile', headers: {
      "Authorization": "Bearer ${creds['accessToken']}"
    });

  }
}