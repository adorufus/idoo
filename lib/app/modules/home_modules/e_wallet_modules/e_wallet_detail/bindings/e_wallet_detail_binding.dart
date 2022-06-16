import 'package:get/get.dart';

import '../controllers/e_wallet_detail_controller.dart';

class EWalletDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EWalletDetailController>(
      () => EWalletDetailController(),
    );
  }
}
