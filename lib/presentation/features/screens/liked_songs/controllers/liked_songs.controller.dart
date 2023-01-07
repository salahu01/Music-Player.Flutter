import 'package:music_app/imports_bindings.dart';

class LikedSongsController extends GetxController {
  
  //*The onInit() is a method that is called when an object for OfflineController is created and inserted inside the widget tree
  @override
  void onInit() {
    final allSongs = Get.find<OfflineController>().tracks;
    final likedIds = OfflineSongsStorage().getAllLikedSongs();
    likedSongs.addAll(allSongs.toSet().toList().where((e) => likedIds.contains(e.id)).toList());
    super.onInit();
  }

  final OfflineController offlineController = Get.find<OfflineController>();

  List<SongModel> likedSongs = [];
}
