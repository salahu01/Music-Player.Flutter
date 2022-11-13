import 'package:get/get.dart';
import 'package:music_app/presentation/offline/controllers/offline.controller.dart';
import 'package:music_app/presentation/online/controllers/online.controller.dart';
import 'package:music_app/presentation/settings/controllers/settings.controller.dart';

import '../../../../presentation/root/controllers/root.controller.dart';

class RootControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(
      () => RootController(),
    );
    Get.lazyPut<OfflineController>(
      () => OfflineController(),
    );
    Get.lazyPut<OnlineController>(
      () => OnlineController(),
    );
    Get.lazyPut<SettingsController>(
      () => SettingsController(),
    );
  }
}
