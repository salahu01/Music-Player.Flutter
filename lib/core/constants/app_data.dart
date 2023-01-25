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
  static List<IconTitleModel> get offlineSongMore => [
        IconTitleModel(icon: Icons.favorite, label: LocaleKeys.like.tr),
        IconTitleModel(icon: Icons.edit, label: LocaleKeys.rename.tr),
        IconTitleModel(icon: Icons.delete, label: LocaleKeys.delete.tr),
        IconTitleModel(icon: Icons.description_sharp, label: LocaleKeys.details.tr),
        IconTitleModel(icon: Icons.favorite_border, label: LocaleKeys.unLike.tr),
      ];
  //*This variable contains offline play list tile more datas
  static List<IconTitleModel> get playListMore => [
        IconTitleModel(icon: Icons.edit, label: LocaleKeys.rename.tr),
        IconTitleModel(icon: Icons.delete, label: LocaleKeys.delete.tr),
      ];
  //*This variable contains current playing song details
  static List<SongDeatilsModel> selectedSongDetails(SongModel s) => [
        SongDeatilsModel(label: '${LocaleKeys.title.tr} : ', value: s.title),
        SongDeatilsModel(label: '${LocaleKeys.artist.tr} : ', value: s.artist ?? LocaleKeys.unknown.tr),
        SongDeatilsModel(label: '${LocaleKeys.fileExtension.tr} : ', value: s.fileExtension),
        SongDeatilsModel(label: '${LocaleKeys.dateAdded.tr} : ', value: s.dateAdded.toString()),
        SongDeatilsModel(label: '${LocaleKeys.dateModified.tr} : ', value: s.dateModified.toString()),
        SongDeatilsModel(label: '${LocaleKeys.size.tr} : ', value: s.size.toString()),
        SongDeatilsModel(label: '${LocaleKeys.duration.tr} : ', value: s.duration.toString()),
        SongDeatilsModel(label: '${LocaleKeys.unknown.tr} : ', value: s.composer ?? LocaleKeys.unknown.tr),
        SongDeatilsModel(label: '${LocaleKeys.uri.tr} : ', value: s.uri ?? LocaleKeys.notFound.tr),
        SongDeatilsModel(label: '${LocaleKeys.location.tr} : ', value: s.data),
      ];
  //*This variable contains diffrent theme modes
  static List<ThemeModeModel> get themeModes => [
        ThemeModeModel(themeMode: ThemeMode.system, label: LocaleKeys.system.tr),
        ThemeModeModel(themeMode: ThemeMode.dark, label: LocaleKeys.dark.tr),
        ThemeModeModel(themeMode: ThemeMode.light, label: LocaleKeys.light.tr),
      ];
  //*This variable contains diffrent languages
  static const List<SongDeatilsModel> languages = [
    SongDeatilsModel(label: 'English', value: 'enUS'),
    SongDeatilsModel(label: 'Hindi', value: 'hi'),
    SongDeatilsModel(label: 'Malayalam', value: 'ml'),
  ];
}
