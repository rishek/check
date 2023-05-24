import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:untitled/app/modules/check1/views/check1_view.dart';
import 'package:untitled/app/modules/check2/views/check2_view.dart';
import 'package:untitled/app/modules/check3/views/check3_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  var pageIndex = 0.obs;
  final pages = [Check1View(), Check2View(), Check3View()];
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: AnimatedSwitcher(
            duration: const Duration(microseconds: 400000),
            child: pages[pageIndex.value]),
        bottomNavigationBar: CurvedNavigationBar(
          animationDuration: const Duration(microseconds: 400000),
          backgroundColor: const Color(0x10919193),
          items: <Widget>[
            Icon(Icons.sports_esports_outlined,
                color: pageIndex.value == 0 ? Colors.blue : Colors.grey),
            Icon(Icons.location_on_outlined,
                color: pageIndex.value == 1 ? Colors.blue : Colors.grey),
            Icon(Icons.emoji_events_outlined,
                color: pageIndex.value == 2 ? Colors.blue : Colors.grey),
          ],
          onTap: (index) {
            pageIndex.value = index;
            print(pageIndex);
          },
        ),
      ),
    );
  }
}
