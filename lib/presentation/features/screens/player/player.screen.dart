import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/player.controller.dart';

class PlayerScreen extends GetView<PlayerController> {
  const PlayerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlayerScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PlayerScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
