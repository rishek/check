import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/check3_controller.dart';

class Check3View extends GetView<Check3Controller> {
  const Check3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 70, 16, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "leaderboard",
              ),
            ],
          ),
          Expanded(child: tabs())
        ],
      ),
    );
  }

  Widget tabs() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: TabBar(
            labelPadding: EdgeInsets.only(left: 14, right: 14),
            indicatorColor: Colors.black,
            tabs: const [
              Tab(text: "Hangman"),
              Tab(text: "Quick Recall"),
              Tab(text: "Rapid Fire"),
            ],
            labelColor: Colors.black,
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: [
            Container(color: Colors.black),
            Container(color: Colors.red),
            Container(color: Colors.yellow)
          ],
        ),
      ),
    );
  }
}
