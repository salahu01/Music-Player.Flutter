import 'package:music_app/imports_bindings.dart';

class AppData {
  //*This variable contains offline tab titles
  static const offlineTabs = ['Tracks', 'Albums', 'Others'];
  //*This variable contains offline other screen options
  static final List<OfflineOtherModel> offlineOters = [
    OfflineOtherModel(onTap: () => Get.toNamed(Routes.likedSongs), otherName: 'Liked Songs'),
    OfflineOtherModel(onTap: () => Get.toNamed(Routes.playList), otherName: 'Play Lists')
  ];
  //*This variable contains offline screen sorting model datas
  static const List<SortTypeModel> sortTypeOptions = [
    SortTypeModel(label: 'Title', icon: Icons.sort, sortType: SongSortType.TITLE),
    SortTypeModel(label: 'Date Added', icon: Icons.date_range_outlined, sortType: SongSortType.DATE_ADDED),
    SortTypeModel(label: 'Size', icon: Icons.storage_outlined, sortType: SongSortType.SIZE),
  ];
  //*This variable contains offline screen sorting datats
  static const List<SortOrderModel> sortOrderOPtions = [
    SortOrderModel(label: 'Normal', icon: Icons.arrow_drop_down, isNormal: true),
    SortOrderModel(label: 'Reversed', icon: Icons.arrow_drop_up, isNormal: false),
  ];
  //*This variable contains offline song tile more datas
  static const List<IconTitleModel> offlineSongMore = [
    IconTitleModel(icon: Icons.favorite, label: 'Liked'),
    IconTitleModel(icon: Icons.edit, label: 'Rename'),
    IconTitleModel(icon: Icons.delete, label: 'Delete'),
    IconTitleModel(icon: Icons.description_sharp, label: 'Details'),
    IconTitleModel(icon: Icons.favorite_border, label: 'UnLike'),
  ];
  //*This variable contains current playing song details
  static final List<SongDeatilsModel> selectedSongDetails = [
    SongDeatilsModel(label: 'Title : ', value: Get.find<PlayerController>().selectedSong.value?.title ?? 'No title'),
    SongDeatilsModel(label: 'Artist : ', value: Get.find<PlayerController>().selectedSong.value?.artist ?? 'Unknown'),
    SongDeatilsModel(label: 'DateAdded : ', value: Get.find<PlayerController>().selectedSong.value?.dateAdded.toString() ?? 'No DateAdded'),
    SongDeatilsModel(label: 'DateModified : ', value: Get.find<PlayerController>().selectedSong.value?.dateModified.toString() ?? 'No DateModified'),
    SongDeatilsModel(label: 'Duration : ', value: Get.find<PlayerController>().selectedSong.value?.duration.toString() ?? 'Coudn\'t find'),
    SongDeatilsModel(label: 'Composer : ', value: Get.find<PlayerController>().selectedSong.value?.composer ?? 'Unknown'),
    SongDeatilsModel(label: 'Location : ', value: Get.find<PlayerController>().selectedSong.value?.displayName ?? 'Cound\'t find'),
  ];
  //*This variable contains diffrent theme modes
  static const List<ThemeModeModel> themeModes = [
    ThemeModeModel(themeMode: ThemeMode.system, label: 'System'),
    ThemeModeModel(themeMode: ThemeMode.dark, label: 'Dark'),
    ThemeModeModel(themeMode: ThemeMode.light, label: 'Light'),
  ];
}
