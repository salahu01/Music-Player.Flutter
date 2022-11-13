import 'package:get/get.dart';
import 'package:music_app/presentation/offline/view/tabs/albums.dart';
import 'package:music_app/presentation/offline/view/tabs/others.dart';
import 'package:music_app/presentation/offline/view/tabs/songs.dart';
import 'package:music_app/presentation/root/controllers/root.controller.dart';

class OfflineController extends GetxController {
  final tabViews = [
    SongsTab(
        scrollController: Get.find<RootController>().offlineSongsController.value),
    AlbumsTab(
        scrollController: Get.find<RootController>().offlineAlbumCotroller.value),
    const OthersTab()
  ];
}
   