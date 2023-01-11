import 'package:music_app/imports_bindings.dart';

class LikedSongsController extends GetxController with StateMixin {
  //* This constructor body for creating singleton widget
  factory LikedSongsController() {
    _likedSongsController == null ? {_likedSongsController = LikedSongsController._internel()} : null;
    return _likedSongsController!;
  }

  //* This named constructor for create object for this class
  LikedSongsController._internel();

  //* This variable for store this class object globally
  static LikedSongsController? _likedSongsController;

  //*The onInit() is a method that is called when an object for OfflineController is created and inserted inside the widget tree
  @override
  void onInit() {
    getLikedIds();
    super.onInit();
  }

  //* This variable for store player controller instace for getting player fuction
  PlayerController playerController = Get.put(PlayerController());

  //* This variable using to store liked songs
  List<SongModel> likedSongs = [];

  void getLikedIds() {
    change(null, status: RxStatus.loading());
    final allSongs = Get.find<OfflineController>().tracks;
    final offlineSongsStorage = OfflineSongsStorage();
    offlineSongsStorage.likedIds.listen((likedIds) {
      change(null, status: RxStatus.loading());
      likedSongs
        ..clear()
        ..addAll(allSongs.where((e) => likedIds.contains(e.id)).toList());
      change(null, status: likedSongs.isEmpty ? RxStatus.empty(): RxStatus.success());
    });
    offlineSongsStorage.getAllLikedSongs();
  }
}
