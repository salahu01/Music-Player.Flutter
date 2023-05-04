import 'package:music_app/imports_bindings.dart';

class ArtistDetailsApiRepo {
  //* This constructor body for creating singleton widget
  factory ArtistDetailsApiRepo() {
    _artistDetailsApiRepo == null ? {_artistDetailsApiRepo = ArtistDetailsApiRepo._internel()} : null;
    return _artistDetailsApiRepo!;
  }

  //* This named constructor for create object for this class
  ArtistDetailsApiRepo._internel();

  //* This variable for store this class object globally
  static ArtistDetailsApiRepo? _artistDetailsApiRepo;

  //* This methord for get Artist Details
  Future<Either<String, ArtistDetailsEntity>> getArtistDetails(String artistId) async {
    try {
      return await BaseRepository().apiCall(
        call: Dio().get(ApiUris.getArtistDetails.uri, options: Options(headers: ApiUris.getArtistDetails.headers), queryParameters: {'artistId': artistId}),
        onSuccess: (json) => right(ArtistDetailsEntity.fromJson(json.data)),
      );
    } catch (e) {
      write('error occured in ***get Artist Details*** :- $e');
      return left(e as String);
    }
  }
}
