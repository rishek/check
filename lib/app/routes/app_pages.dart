import 'package:get/get.dart';

import '../modules/check1/bindings/check1_binding.dart';
import '../modules/check1/views/check1_view.dart';
import '../modules/check2/bindings/check2_binding.dart';
import '../modules/check2/views/check2_view.dart';
import '../modules/check3/bindings/check3_binding.dart';
import '../modules/check3/views/check3_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CHECK1,
      page: () => const Check1View(),
      binding: Check1Binding(),
    ),
    GetPage(
      name: _Paths.CHECK2,
      page: () => const Check2View(),
      binding: Check2Binding(),
    ),
    GetPage(
      name: _Paths.CHECK3,
      page: () => const Check3View(),
      binding: Check3Binding(),
    ),
  ];
}
