import 'package:get/get.dart';

import '../controllers/check1_controller.dart';

class Check1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Check1Controller>(
      () => Check1Controller(),
    );
  }
}
