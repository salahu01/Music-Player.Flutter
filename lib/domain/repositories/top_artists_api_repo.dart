import 'package:music_app/imports_bindings.dart';

class ArtistApiRepo {
  //* This constructor body for creating singleton widget
  factory ArtistApiRepo() {
    _artistApiRepo == null ? {_artistApiRepo = ArtistApiRepo._internel()} : null;
    return _artistApiRepo!;
  }

  //* This named constructor for create object for this class
  ArtistApiRepo._internel();

  //* This variable for store this class object globally
  static ArtistApiRepo? _artistApiRepo;

  //* This methord for get Top Artists
  Future<Either<String, TopArtistsEntity>> getTopArtists() async {
    try {
      return BaseRepository().apiCall(
        call: Dio().get(ApiUris.getTopArtists.uri, options: Options(headers: ApiUris.getTopArtists.headers)),
        onSuccess: (json) => right(TopArtistsEntity.fromJson(json.data)),
      );
    } catch (e) {
      write('error occured in ***getTopArtists*** :- $e');
      return left(e as String);
    }
  }
}
