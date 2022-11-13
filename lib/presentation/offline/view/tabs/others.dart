import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:music_app/presentation/offline/controllers/offline.controller.dart';

class OthersTab extends GetView<OfflineController> {
  const OthersTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
