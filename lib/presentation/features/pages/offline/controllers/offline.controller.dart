import 'package:music_app/imports_bindings.dart';

class OfflineController extends GetxController with StateMixin {
  //*The onInit() is a method that is called when an object for OfflineController is created and inserted inside the widget tree
  @override
  void onInit() {
    //* This methord using for fetch local song when user open the screen
    getSongs();
    _playerServices = PlayerServices();
    super.onInit();
  }

  //* This variable using for store all albums from local internal storage 💿
  late List<SongModel> albums;
  //* This variable using for store all tracks ( all songs ) from local internal storage 🎶
  late List<SongModel> tracks;

  //*This Variable using to store current playing Or current Selected song creadential Or Datas ⛏️
  Rx<SongModel?> selectedSong = Rx(null);

  //* This variable using to store current tracks ( all songs ) sort type (eg : date added , title , size)
  Rx<SortTypeModel> tracksSortType = Rx(AppData.sortTypeOptions[0]);
  //* This variable using to store current album sort type (eg : date added , title , size)
  Rx<SortTypeModel> albumsSortType = Rx(AppData.sortTypeOptions[0]);
  //* This variable using to store current tracks ( all songs ) sort order ( eg : A - Z , Z - A )
  Rx<SortOrderModel> tracksSortOrder = Rx(AppData.sortOrderOPtions[0]);
  //* This variable using to store current albums sort order ( eg : A - Z , Z - A )
  Rx<SortOrderModel> albumsSortOrder = Rx(AppData.sortOrderOPtions[0]);

  //* This variable using to store player services object ( for creating instance of PlayerServices classes instance )
  late PlayerServices _playerServices;

  //* This variable using to store offline screens tabbar views Or screens
  final tabViews = [
    TracksTab(scrollController: Get.find<RootController>().offlineTracksController.value),
    AlbumsTab(scrollController: Get.find<RootController>().offlineAlbumCotroller.value),
    const OthersTab()
  ];

  //* This methord using to fetch audion from internel storage
  void getSongs() async {
    change(null, status: RxStatus.loading());
    final localAudioServices = Get.find<LocalAudios>();
    albums = await localAudioServices.getSongs(sortType: SongSortType.ALBUM);
    tracks = await localAudioServices.getSongs(sortType: SongSortType.TITLE);
    change(null, status: RxStatus.success());
  }

  //* This methord using to play current selected song
  void playSong({required List<SongModel> songsModels, required int index}) async {
    await _playerServices.play(songModels: songsModels, index: index);
    selectedSong.value = songsModels[index];
    _playerServices.playingSongModel.addListener(() {
      selectedSong.value = _playerServices.playingSongModel.value;
    });
  }

  //* This methord using to check current playing songs ListTile ( for highlight selected song tile )
  bool isSelected({required int index, required bool isTracks}) {
    if (selectedSong.value == null) {
      return false;
    }
    return isTracks ? tracks[index].id == selectedSong.value!.id : albums[index].id == selectedSong.value!.id;
  }

  //* This methord using sort songs ( It contains ablums sorting && tracks sorting )
  void sortSongs({SortTypeModel? sortTypeModel, SortOrderModel? sortOrderModel, required bool isAlbum}) {
    switch ((sortTypeModel ?? (isAlbum ? albumsSortType.value : tracksSortType.value)).sortType) {
      case SongSortType.TITLE:
        (isAlbum ? albums : tracks).sort((a, b) {
          return (sortOrderModel ?? (isAlbum ? albumsSortOrder.value : tracksSortOrder.value)).isNormal
              ? a.title.toLowerCase().compareTo(b.title.toLowerCase())
              : b.title.toLowerCase().compareTo(a.title.toLowerCase());
        });
        break;
      case SongSortType.DATE_ADDED:
        (isAlbum ? albums : tracks).sort((a, b) {
          return (sortOrderModel ?? (isAlbum ? albumsSortOrder.value : tracksSortOrder.value)).isNormal
              ? (a.dateAdded ?? 0).compareTo(b.dateAdded ?? 0)
              : (b.dateAdded ?? 0).compareTo(a.dateAdded ?? 0);
        });
        break;
      case SongSortType.SIZE:
        (isAlbum ? albums : tracks).sort((a, b) {
          return (sortOrderModel ?? (isAlbum ? albumsSortOrder.value : tracksSortOrder.value)).isNormal ? a.size.compareTo(b.size) : b.size.compareTo(a.size);
        });
        break;
      default:
    }
    sortTypeModel != null ? (isAlbum ? albumsSortType : tracksSortType).value = sortTypeModel : null;
    sortOrderModel != null ? (isAlbum ? albumsSortOrder : tracksSortOrder).value = sortOrderModel : null;
  }
}
