import 'package:music_app/imports_bindings.dart';

class SearchController extends GetxController with StateMixin {
  //* This constructor body for creating singleton widget
  factory SearchController() {
    _searchController == null ? {_searchController = SearchController._internel()} : null;
    return _searchController!;
  }

  //* This named constructor for create object for this class
  SearchController._internel();

  //* This variable for store this class object globally
  static SearchController? _searchController;

  //*The onInit() is a method that is called when an object for OfflineController is created and inserted inside the widget tree
  @override
  void onInit() {
    searchFieldCangeed(''); //* this call for initally list all songs
    super.onInit();
  }

  //*The variable using to store all search bar equalized tabsvies ( tan views means seach widget body returnig objects )
  final tabViews = const [
    OfflineSearchView(),
    OnlineSearchView(),
  ];

  //* This variable for store player controller instace for getting offline tracks
  PlayerController playerController = Get.put(PlayerController());

  //* This variable for store offline controller instace for getting offline tracks
  final OfflineController _offlineController = Get.put(OfflineController());

  //* This variable for store searched songs results
  List<SongModel> searchedSongs = [];

  //* This methor for search song depended user intraction
  void searchFieldCangeed(String? text) {
    change(null, status: RxStatus.loading());
    searchedSongs.clear();
    text == null || text.isEmpty
        ? searchedSongs.addAll(_offlineController.tracks)
        : searchedSongs.addAll(_offlineController.tracks.where((e) => e.title.toLowerCase().contains(text.toLowerCase())).toList());
    searchedSongs.isEmpty ? change(null, status: RxStatus.empty()) : change(null, status: RxStatus.success());
  }
}
