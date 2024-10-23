import 'package:get/get_connect/http/src/response/response.dart';
import 'package:idoo/app/services/base_api_service.dart';

class OtpApiConsumer extends BaseApiService {

  Future<Response> verifyOtp(String phoneNumber, String otp, String mode) async {
    final Response response = await post('/verify-phone-no', {
      "applicationId": 1,
      "phoneNumber": phoneNumber,
      "otp": otp,
      "mode": mode,
      "device": "SM-A155F/DSN"
    });

    return response;
  }
}