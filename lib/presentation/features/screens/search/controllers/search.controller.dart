import 'package:music_app/imports_bindings.dart';

class SearchController extends GetxController {

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

  //* This variable for store offline controller instace for getting offline tracks
  OfflineController offlineController = Get.put(OfflineController());

  //* This variable for store searched songs results
  Rx<List<SongModel>> seachedSongs = Rx<List<SongModel>>([]);

  //* This methor for search song depended user intraction
  void searchFieldCangeed(String? text) {
    seachedSongs.value = [];
    seachedSongs.value.addAll(text == null || text.isEmpty ? offlineController.tracks : offlineController.tracks.where((e) => e.title.toLowerCase() == text.toLowerCase()));
  }
}
