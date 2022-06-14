import 'package:get/get.dart';

import '../controllers/e_wallet_controller.dart';

class EWalletBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EWalletController>(
      () => EWalletController(),
    );
  }
}
