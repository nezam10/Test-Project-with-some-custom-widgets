import 'package:get/get.dart';

import '../controllers/check_balance_controller.dart';

class CheckBalanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckBalanceController>(
      () => CheckBalanceController(),
    );
  }
}
