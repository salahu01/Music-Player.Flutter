import 'package:music_app/imports_bindings.dart';

class AppData {
  //*This variable contains offline tab titles
  static const offlineTabs = ['Tracks', 'Albums', 'Others'];
  //*This variable contains offline other screen options
  static const List<String> offlineOters = ['Liked Songs', 'Play Lists'];
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
}
