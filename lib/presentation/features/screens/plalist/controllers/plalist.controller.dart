import 'package:music_app/imports_bindings.dart';

class PlalistController extends GetxController with StateMixin {
  @override
  void onInit() {
    listenPlayList();
    super.onInit();
  }

  //* This variable using to store offline song storage services object ( for creating instance of OfflineSongsStorage class )
  final OfflineSongsStorage _offlineSongsStorage = OfflineSongsStorage();

  //* This variable for store playLists (it contains songs id && playList name )
  Rx<List<PlayListModel>> playLists = Rx<List<PlayListModel>>([]);

  //* This methord for listen playlist storage
  void listenPlayList() {
    playLists.value = _offlineSongsStorage.playLists.value;
    _offlineSongsStorage.playLists.listen((plalists) {
      playLists.value = plalists;
    });
  }

  //* This methord for create a playList
  void createPlayList(String title) {
    _offlineSongsStorage.storePlayListsSong(playListName: title);
  }
}
