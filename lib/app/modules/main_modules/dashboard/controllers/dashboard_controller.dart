import 'package:get/get.dart';

class DashboardController extends GetxController {
  var currentTab = 0.obs;

  void changeScreen(int tab) {
    currentTab.value = tab;
  }
}
