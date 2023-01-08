import 'dart:async';

import 'package:music_app/imports_bindings.dart';

class OfflineSongsStorage with ChangeNotifier{
  //* This constructor body for creating singleton widget
  factory OfflineSongsStorage() {
    _offlineSongsStorage == null ? {_offlineSongsStorage = OfflineSongsStorage._internel()} : null;
    return _offlineSongsStorage!;
  }

  //* This named constructor for create object for this class
  OfflineSongsStorage._internel() {
    Hive.openBox<num>(StorageKeys.offlineFavouriteKey).then((_) => {_favoriteStorageBox = _, getAllLikedSongs()});
    Hive.openBox<Map<String, dynamic>>(StorageKeys.offlinePlayListKey).then((_) => _playListsStorageBox = _);
  }

  //* This variable for store this class object globally
  static OfflineSongsStorage? _offlineSongsStorage;

  //* This variable for store offline favourite storage box from HIVE
  late Box<num> _favoriteStorageBox;

  //* This variable for store offline playlist storage box from HIVE
  late Box<Map> _playListsStorageBox;

  //* This variable for store liked songIds
  final ValueNotifier<List<num>> likedIds = ValueNotifier([]);

  //* This methord for check favourite song
  checkFavouriteSong({required num id}) {
    return _favoriteStorageBox.values.contains(id);
  }

  //* This methord for get all liked songs
  void getAllLikedSongs() {
    likedIds.value..clear()..addAll(_favoriteStorageBox.values.toList().toSet().toList());
    likedIds.notifyListeners();
  }

  //* This methord for store favourite songs to loacl storage
  Future<void> storeFavouriteSong({required num id}) async {
    await _favoriteStorageBox.add(id);
    getAllLikedSongs();
  }

  //* This methord for remove song from favourite storage
  void removeSongFromFavourite({num? id, int? index}) {
     id != null ? _favoriteStorageBox.deleteAt(_favoriteStorageBox.values.toList().indexWhere((e) => e == id)) : _favoriteStorageBox.deleteAt(index!);
    getAllLikedSongs();
  }

  //* This methord for store play lists to loacl storage
  Future<void> storePlayListsSong({required String playListName, required num id}) async {
    var playList = _playListsStorageBox.values.toList().singleWhere((e) => e['playlist_name'] == playListName, orElse: () => {});
    if (playList['playlist_name'] == null) {
      _playListsStorageBox.add({
        'playlist_name': playListName,
        'ids': [id]
      });
      return;
    }
    _playListsStorageBox.add({
      'playlist_name': playListName,
      'ids': playList['ids'] + [id]
    });
  }

  // //* This methord for remove song from playlists storage
  // Future<void> removeSongFormPlayLists({required String playListName, int? index}) async {
  //  var playList  = _playListsStorageBox.values.toList().singleWhere((e) => e['playlist_name'] == playListName,orElse: () => {});
  //  if(playList['playlist_name'] == null){
  //   _playListsStorageBox.add({'playlist_name': playListName, 'ids':[id]});
  //   return;
  //  }
  //   _playListsStorageBox.add({'playlist_name': playListName, 'ids': playList['ids']+[id]});
  // }

}
