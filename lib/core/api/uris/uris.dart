import 'package:music_app/imports_bindings.dart';

class ApiUris {
  //* Get Top Artists
  static const ApiUriModel getTopArtists = ApiUriModel(
    uri: 'https://spotify-scraper.p.rapidapi.com/v1/chart/artists/top',
    headers: {
      'X-RapidAPI-Key': '396cfcdb89msh45e0c23ac2403a5p193c3ejsnf2a0b25dd9e8',
      'X-RapidAPI-Host': 'spotify-scraper.p.rapidapi.com',
    },
  );
}
