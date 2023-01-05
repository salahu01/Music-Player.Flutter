import 'package:music_app/imports_bindings.dart';

class LikedSongsController extends GetxController {
  @override
  void onInit() {
    final allSongs = Get.find<OfflineController>().tracks;
    final likedIds = OfflineSongsStorage().getAllLikedSongs();
    likedSongs.addAll(allSongs.where((e) => likedIds.contains(e.id)).toList());
    super.onInit();
  }

  List<SongModel> likedSongs = [];
}
