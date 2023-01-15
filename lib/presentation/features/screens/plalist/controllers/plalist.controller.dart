import 'package:music_app/imports_bindings.dart';

class PlalistController extends GetxController with StateMixin {
  @override
  void onInit() {
    getPlayLists();
    super.onInit();
  }

  //* This variable using to store offline song storage services object ( for creating instance of OfflineSongsStorage class )
  final OfflineSongsStorage _offlineSongsStorage = OfflineSongsStorage();

  //* This variable for get

  //* This variable for store playLists (it contains songs id && playList name )
  late PlayListModel playListModel;

  //* This methord for get all playlists
  getPlayLists() {
    change(null, status: RxStatus.loading());
    playListModel = _offlineSongsStorage.getPlayLists();
    change(null, status: playListModel.playList.isEmpty ? RxStatus.empty() : RxStatus.success());
  }
}
