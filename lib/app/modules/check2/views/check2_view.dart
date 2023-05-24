import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/check2_controller.dart';

class Check2View extends GetView<Check2Controller> {
  const Check2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check2View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Check2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
