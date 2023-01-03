import 'package:music_app/imports_bindings.dart';

class OfflineController extends GetxController with StateMixin {
  @override
  void onInit() {
    getSongs();
    _playerServices = PlayerServices();
    super.onInit();
  }

  late List<SongModel> albums;
  late List<SongModel> songs;
  Rx<SongModel?> selectedSong = Rx(null);
  late PlayerServices _playerServices;

  final tabViews = [
    SongsTab(scrollController: Get.find<RootController>().offlineSongsController.value),
    AlbumsTab(scrollController: Get.find<RootController>().offlineAlbumCotroller.value),
    const OthersTab()
  ];

  void getSongs() async {
    change(null, status: RxStatus.loading());
    final localAudioServices = Get.find<LocalAudios>();
    albums = await localAudioServices.getSongs(sortType: SongSortType.ALBUM);
    songs = await localAudioServices.getSongs(sortType: SongSortType.TITLE);
    change(null, status: RxStatus.success());
  }

  void playSong({required bool isSongs, required int index}) async {
    var songsModels = isSongs ? songs : albums;
    await _playerServices.play(songModels: songsModels, index: index);
    selectedSong.value = songsModels[index];
    _playerServices.player.currentIndexStream.listen((currentIndex) {
      selectedSong.value = songsModels[currentIndex ?? 0];
    });
  }

  bool isSelected({required int index, required bool isSongs}) {
    if (selectedSong.value == null) {
      return false;
    }
    return isSongs ? songs[index].id == selectedSong.value!.id : albums[index].id == selectedSong.value!.id;
  }
}
