import 'package:music_app/imports_bindings.dart';

class LocalAudios {
  final _audioQuery = OnAudioQuery();
  Future<List<SongModel>> getSongs({required SongSortType sortType}) async {
    await _requestPermission();
    return _audioQuery.querySongs(
      sortType: sortType,
      orderType: OrderType.ASC_OR_SMALLER,
      uriType: UriType.EXTERNAL,
      ignoreCase: true,
    );
  }

  Future<bool> _requestPermission() async {
    if (kIsWeb) {
      return false;
    }
    bool permissionStatus = await _audioQuery.permissionsStatus();
    if (permissionStatus) {
      return true;
    }
    return await _audioQuery.permissionsRequest();
  }
}
