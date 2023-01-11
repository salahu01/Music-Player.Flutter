import 'package:music_app/imports_bindings.dart';

class ArtistApiRepo implements ArtistApiImpl {
  @override
  Future<Either<AppErrors, TopArtistsEntity>> getArtists() async {
    try {
      return BaseRepository().apiCall(
        call: Dio().get(ApiUris.getTopArtists.uri, options: Options(headers: ApiUris.getTopArtists.headers)),
        onSuccess: (json) => right(TopArtistsEntity.fromJson(json.data)),
      );
    } catch (e) {
      left(e);
    }
    return left(AppErrors.unknownError());
  }
}
