import 'package:music_app/imports_bindings.dart';

class AppData {
  //*This variable contains offline tab titles
  static List<String> get offlineTabs => [LocaleKeys.tracks.tr, LocaleKeys.albums.tr, LocaleKeys.other.tr];
  //*This variable contains offline other screen options
  static List<OfflineOtherModel> get offlineOters => [
        OfflineOtherModel(onTap: () => Get.toNamed(Routes.likedSongs), otherName: LocaleKeys.likedSongs.tr),
        OfflineOtherModel(onTap: () => Get.toNamed(Routes.playLists), otherName: LocaleKeys.playLists.tr)
      ];
  //*This variable contains offline screen sorting model datas
  static List<SortTypeModel> get sortTypeOptions => [
        SortTypeModel(label: LocaleKeys.title.tr, icon: Icons.sort, sortType: SongSortType.TITLE),
        SortTypeModel(label: LocaleKeys.dateAdded.tr, icon: Icons.date_range_outlined, sortType: SongSortType.DATE_ADDED),
        SortTypeModel(label: LocaleKeys.size.tr, icon: Icons.storage_outlined, sortType: SongSortType.SIZE),
      ];
  //*This variable contains offline screen sorting datats
  static List<SortOrderModel> get sortOrderOPtions => [
        SortOrderModel(label: LocaleKeys.normal.tr, icon: Icons.arrow_drop_down, isNormal: true),
        SortOrderModel(label: LocaleKeys.reversed.tr, icon: Icons.arrow_drop_up, isNormal: false),
      ];
  //*This variable contains offline song tile more datas
  static const List<IconTitleModel> offlineSongMore = [
    IconTitleModel(icon: Icons.favorite, label: 'Like'),
    IconTitleModel(icon: Icons.edit, label: 'Rename'),
    IconTitleModel(icon: Icons.delete, label: 'Delete'),
    IconTitleModel(icon: Icons.description_sharp, label: 'Details'),
    IconTitleModel(icon: Icons.favorite_border, label: 'UnLike'),
  ];
  //*This variable contains offline play list tile more datas
  static const List<IconTitleModel> playListMore = [
    IconTitleModel(icon: Icons.edit, label: 'Rename'),
    IconTitleModel(icon: Icons.delete, label: 'Delete'),
  ];
  //*This variable contains current playing song details
  static List<SongDeatilsModel> selectedSongDetails(SongModel s) => [
        SongDeatilsModel(label: 'Title : ', value: s.title),
        SongDeatilsModel(label: 'Artist : ', value: s.artist ?? 'Unknown'),
        SongDeatilsModel(label: 'FileExtension : ', value: s.fileExtension),
        SongDeatilsModel(label: 'DateAdded : ', value: s.dateAdded.toString()),
        SongDeatilsModel(label: 'DateModified : ', value: s.dateModified.toString()),
        SongDeatilsModel(label: 'FileSize : ', value: s.size.toString()),
        SongDeatilsModel(label: 'Duration : ', value: s.duration.toString()),
        SongDeatilsModel(label: 'Composer : ', value: s.composer ?? 'Unknown'),
        SongDeatilsModel(label: 'Uri : ', value: s.uri ?? 'Not found'),
        SongDeatilsModel(label: 'Location : ', value: s.data),
      ];
  //*This variable contains diffrent theme modes
  static const List<ThemeModeModel> themeModes = [
    ThemeModeModel(themeMode: ThemeMode.system, label: 'System'),
    ThemeModeModel(themeMode: ThemeMode.dark, label: 'Dark'),
    ThemeModeModel(themeMode: ThemeMode.light, label: 'Light'),
  ];
  //*This variable contains diffrent languages
  static const List<SongDeatilsModel> languages = [
    SongDeatilsModel(label: 'English', value: 'enUS'),
    SongDeatilsModel(label: 'Hindi', value: 'hi'),
    SongDeatilsModel(label: 'Malayalam', value: 'ml'),
  ];
}
