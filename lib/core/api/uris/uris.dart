import 'package:music_app/imports_bindings.dart';

class ApiUris {
  static const _apiKey = '396cfcdb89msh45e0c23ac2403a5p193c3ejsnf2a0b25dd9e8';
  static const _apiHost = 'spotify-scraper.p.rapidapi.com';
  //* Get Top Artists
  static const ApiUriModel getTopArtists = ApiUriModel(
    uri: 'https://spotify-scraper.p.rapidapi.com/v1/chart/artists/top',
    headers: {
      'X-RapidAPI-Key': _apiKey,
      'X-RapidAPI-Host': _apiHost,
    },
  );
  //* Get Artist Detalis
  static const ApiUriModel getArtistDetails = ApiUriModel(
    uri: 'https://spotify-scraper.p.rapidapi.com/v1/artist/overview',
    headers: {
      'X-RapidAPI-Key': _apiKey,
      'X-RapidAPI-Host': _apiHost,
    },
    queryParameters: {'artistId': '6eUKZXaKkcviH0Ku9w2n3V'},
  );
  //* Get Songs By Track
  static const ApiUriModel downloadTrack = ApiUriModel(
        uri: 'https://spotify-scraper.p.rapidapi.com/v1/track/download',
        headers: {
          'X-RapidAPI-Key': _apiKey,
          'X-RapidAPI-Host': _apiHost,
        },
        queryParameters: {'track': ''},
      );
}
