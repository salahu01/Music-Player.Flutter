import 'package:music_app/imports_bindings.dart';

class LocalAudioServices {
  final _audioQuery = OnAudioQuery();
  bool _permissionStatus = false;
  Future<List<SongModel>> getSongs({required SongSortType sortType}) async {
    _permissionStatus = await _requestPermission();
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
