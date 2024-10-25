import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:idoo/app/modules/profile_modules/profile/controllers/profile_api_consumer.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController

  ProfileApiConsumer apiConsumer = Get.find<ProfileApiConsumer>();
  RxMap profileMap = {}.obs;
  GetStorage box = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    initProfile();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void initProfile() {
    apiConsumer.getProfile().then((res) {
      // print(res.body);
      if (res.statusCode != 200) {
      } else {
        profileMap.value = res.body;

        box.write("profile_data", profileMap.value);

        profileMap.refresh();
      }
    });
  }
}
