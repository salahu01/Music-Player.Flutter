import 'package:get/get.dart';

import '../../../presentation/features/screens/player/controllers/player.controller.dart';

class PlayerControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlayerController>(
      () => PlayerController(),
    );
  }
}
