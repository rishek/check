import 'package:get/get.dart';

import '../controllers/check3_controller.dart';

class Check3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Check3Controller>(
      () => Check3Controller(),
    );
  }
}
