import 'package:music_app/imports_bindings.dart';

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
    Get.lazyPut<LocalAudioServices>(
      () => LocalAudioServices(),
    );
  }
}
