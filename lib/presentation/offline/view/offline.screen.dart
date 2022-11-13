import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/offline.controller.dart';

class OfflineScreen extends GetView<OfflineController> {
  const OfflineScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.tabViews.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Songs'),
              Tab(text: 'Albums'),
              Tab(text: 'Others'),
            ],
          ),
        ),
        body: TabBarView(children: controller.tabViews),
      ),
    );
  }
}
