import 'package:get/get.dart';

import '../controllers/check2_controller.dart';

class Check2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Check2Controller>(
      () => Check2Controller(),
    );
  }
}
