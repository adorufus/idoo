import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class EditProfileController extends GetxController {
  //TODO: Implement EditProfileController
  List<String> dropdownText = ['abc', 'def', 'ghi'];
  Map<String, dynamic> data = {};
  GetStorage box = GetStorage();

  @override
  void onInit() {
    super.onInit();
    data = box.read("profile_data");

    print(data);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
