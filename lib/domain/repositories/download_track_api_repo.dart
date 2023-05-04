import 'package:music_app/imports_bindings.dart';

class DownloadTrackApiRepo {
  //* This constructor body for creating singleton widget
  factory DownloadTrackApiRepo() {
    _artistDetailsApiRepo == null ? {_artistDetailsApiRepo = DownloadTrackApiRepo._internel()} : null;
    return _artistDetailsApiRepo!;
  }

  //* This named constructor for create object for this class
  DownloadTrackApiRepo._internel();

  //* This variable for store this class object globally
  static DownloadTrackApiRepo? _artistDetailsApiRepo;

  //* This methord for download track
  Future<Either<String, DownloadTrackEntity>> downloadTrack(String? track) async {
    try {
      return await BaseRepository().apiCall(
        call: Dio().get(ApiUris.downloadTrack.uri, options: Options(headers: ApiUris.downloadTrack.headers), queryParameters: {'track': track ?? ''}),
        onSuccess: (json) => right(DownloadTrackEntity.fromJson(json.data)),
      );
    } catch (e) {
      write('error occured in ***get Artist Details*** :- $e');
      return left(e as String);
    }
  }
}
