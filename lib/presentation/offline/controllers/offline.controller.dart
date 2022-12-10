import 'package:music_app/imports_bindings.dart';

class OfflineController extends GetxController {
  final tabViews = [
    SongsTab(
        scrollController: Get.find<RootController>().offlineSongsController.value),
    AlbumsTab(
        scrollController: Get.find<RootController>().offlineAlbumCotroller.value),
    const OthersTab()
  ];
}
   