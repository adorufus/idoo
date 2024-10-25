import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:idoo/app/services/base_api_service.dart';

class PinApiConsumer extends BaseApiService {
  Future<Response> doLogin(String phoneNumber, String pin) async {
    final Response response = await post('/login', {
      "applicationId": 1,
      "phoneNumber": phoneNumber,
      "pin": pin,
      "loginDevice": "Motorola"
    });

    return response;
  }

  Future<Response> doRegister(Map<String, dynamic> data) async {
    final Response response = await post('/register', data);

    return response;
  }

  Future<Response> pinChecker(String pin) async {
    GetStorage box = GetStorage();

    final Map<String, dynamic> creds = box.read("creds");

    final Response response = await post(
      '/verify-pin',
      {"pin": pin},
      headers: {"Authorization": "Bearer ${creds["accessToken"]}"},
    );

    return response;
  }
}
