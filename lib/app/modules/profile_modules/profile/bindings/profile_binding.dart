import 'package:get/get.dart';
import 'package:idoo/app/modules/profile_modules/edit_profile/bindings/edit_profile_binding.dart';
import 'package:idoo/app/modules/profile_modules/edit_profile/controllers/edit_profile_controller.dart';

import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EditProfileController());
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
