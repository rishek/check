import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/check1_controller.dart';

class Check1View extends GetView<Check1Controller> {
  const Check1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check1View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Check1View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
