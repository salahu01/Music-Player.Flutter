import 'package:get/get.dart';

import '../../../../presentation/features/screens/all_artists/controllers/all_artists.controller.dart';

class AllArtistsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllArtistsController>(
      () => AllArtistsController(),
    );
  }
}
