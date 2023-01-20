import 'dart:async';

import 'package:music_app/imports_bindings.dart';

class OfflineSongsStorage with ChangeNotifier {
  //* This constructor body for creating singleton widget
  factory OfflineSongsStorage() {
    _offlineSongsStorage == null ? {_offlineSongsStorage = OfflineSongsStorage._internel()} : null;
    return _offlineSongsStorage!;
  }

  //* This named constructor for create object for this class
  OfflineSongsStorage._internel() {
    Hive.openBox<num>(StorageKeys.offlineFavouriteKey).then((_) => {_favoriteStorageBox = _, getAllLikedSongs()});
    Hive.openBox<Map>(StorageKeys.offlinePlayListKey).then((_) => {_playListsStorageBox = _, getAllPlayLists()});
  }

  //* This variable for store this class object globally
  static OfflineSongsStorage? _offlineSongsStorage;

  //* This variable for store offline favourite storage box from HIVE
  late Box<num> _favoriteStorageBox;

  //* This variable for store offline playlist storage box from HIVE
  late Box<Map> _playListsStorageBox;

  //* This variable for store liked songIds
  final ValueNotifier<List<num>> likedIds = ValueNotifier([]);

  //* This variable for store all play Lists
  final ValueNotifier<List<PlayListModel>> playLists = ValueNotifier([]);

  //* This methord for check favourite song
  checkFavouriteSong({required num id}) {
    return _favoriteStorageBox.values.contains(id);
  }

  //* This methord for get all liked songs
  void getAllLikedSongs() {
    likedIds.value
      ..clear()
      ..addAll(_favoriteStorageBox.values.toList().toSet().toList());
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

  //* This methord for get all playlists
  void getAllPlayLists() {
    playLists.value
      ..clear()
      ..addAll(_playListsStorageBox.values.isEmpty ? [] : _playListsStorageBox.values.toList().map((e) => PlayListModel.fromMap(e)).toList());
    playLists.notifyListeners();
  }

  //* This methord for store playlists to local storage
  Future<void> createPlayList({required String playListName}) async {
    await _playListsStorageBox.add({'playlist_name': playListName, 'ids': []});
    getAllPlayLists();
  }

  //* This methord for store songs to playlists
  Future<void> addSongsToPlayList({required int index, required List ids}) async {
    var playlist = _playListsStorageBox.getAt(index);
    if (playlist == null) {
      return;
    }
    playlist['ids'] = ids;
    await _playListsStorageBox.putAt(index, playlist);
    getAllPlayLists();
  }

  //* This methord for remove song from playlists storage
  Future<void> removePlayList({required int index}) async {
    await _playListsStorageBox.deleteAt(index);
    getAllPlayLists();
  }

  //* This methord for update play list name
  Future<void> renamePlayList({required String playListName, required int index}) async {
    var playlist = _playListsStorageBox.getAt(index);
    if (playlist == null) {
      return;
    }
    playlist['playlist_name'] = playListName;
    await _playListsStorageBox.putAt(index, playlist);
    getAllPlayLists();
  }
}
