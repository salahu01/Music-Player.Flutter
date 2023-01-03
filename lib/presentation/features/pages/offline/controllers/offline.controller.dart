import 'package:music_app/imports_bindings.dart';

class OfflineController extends GetxController with StateMixin {
  @override
  void onInit() {
    getSongs();
    super.onInit();
  }

  late List<SongModel> albums;
  late List<SongModel> songs;

  final tabViews = [
    SongsTab(scrollController: Get.find<RootController>().offlineSongsController.value),
    AlbumsTab(scrollController: Get.find<RootController>().offlineAlbumCotroller.value),
    OthersTab()
  ];

  void getSongs() async {
    change(null, status: RxStatus.loading());
    final localAudioServices = Get.find<LocalAudios>();
    albums = await localAudioServices.getSongs(sortType: SongSortType.ALBUM);
    songs = await localAudioServices.getSongs(sortType: SongSortType.TITLE);
    change(null, status: RxStatus.success());
  }
}
