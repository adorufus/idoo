import 'package:get/get.dart';

import '../controllers/edit_profile_controller.dart';

class EditProfileBinding extends Bindings {
  @override
  void dependencies() {
    print("Edit profile deps");
    Get.lazyPut<EditProfileController>(
      () => EditProfileController(),
    );
  }
}
