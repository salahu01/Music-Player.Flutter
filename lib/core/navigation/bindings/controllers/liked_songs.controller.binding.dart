

import 'package:music_app/imports_bindings.dart';

class LikedSongsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LikedSongsController>(
      () => LikedSongsController(),
    );
    Get.lazyPut<OfflineController>(
      () => OfflineController(),
    );
  }
}
