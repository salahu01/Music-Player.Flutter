import 'package:music_app/imports_bindings.dart';

abstract class ArtistApiImpl {
  Future<Either<AppErrors,TopArtistsEntity>> getArtists();
}
