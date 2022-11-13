import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/online.controller.dart';

class OnlineScreen extends GetView<OnlineController> {
  const OnlineScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnlineScreen',style: context.textTheme.headline1),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OnlineScreen is working',
          style: context.textTheme.headline1,
        ),
      ),
    );
  }
}
