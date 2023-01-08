import 'package:music_app/imports_bindings.dart';

class LikedSongsController extends GetxController with StateMixin {
  //*The onInit() is a method that is called when an object for OfflineController is created and inserted inside the widget tree
  @override
  void onInit() {
    getLikedIds();
    super.onInit();
  }

  final OfflineController offlineController = Get.find<OfflineController>();

  List<SongModel> likedSongs = [];

  void getLikedIds() {
    change(null, status: RxStatus.loading());
    final allSongs = Get.find<OfflineController>().tracks;
    final offlineSongsStorage = OfflineSongsStorage();
    offlineSongsStorage.likedIds.listen((likedIds) {
      change(null, status: RxStatus.loading());
      likedSongs..clear() ..addAll(allSongs.where((e) => likedIds.contains(e.id)).toList());
      change(null, status: RxStatus.success());
    });
    offlineSongsStorage.getAllLikedSongs();
  }
}
