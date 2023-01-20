import 'package:music_app/imports_bindings.dart';

class PlaListController extends GetxController with StateMixin {
  @override
  void onInit() {
    listenPlayList();
    super.onInit();
  }

  //* This variable using to store offline song storage services object ( for creating instance of OfflineSongsStorage class )
  final OfflineSongsStorage _offlineSongsStorage = OfflineSongsStorage();

  //* This variable for store playLists (it contains songs id && playList name )
  Rx<List<PlayListModel>> playLists = Rx([]);

  //* This varible for store selected play list songs
  PlayListModel selectedPlayList = PlayListModel(title: '', playListIds: []);

  //* This methord for listen playlist storage
  void listenPlayList() {
    playLists.value = _offlineSongsStorage.playLists.value;
    _offlineSongsStorage.playLists.listen((plalists) {
      playLists.update((v) => v = plalists);
    });
  }

  //* This methord for create a playList
  void createPlayList(String title) {
    _offlineSongsStorage.createPlayList(playListName: title);
  }

  //* This methord for rename a playList
  void renamePlayList(int index, String title) {
    _offlineSongsStorage.renamePlayList(index: index, playListName: title);
  }

  //* This methord for delete a playList
  void deletePlayList(int index) {
    _offlineSongsStorage.removePlayList(index: index);
  }

  //* This methord for navigate selected playList screen
  void toPlayListScreen(int index) {
    selectedPlayList = playLists.value[index];
    Get.toNamed(Routes.playList);
  }
}
