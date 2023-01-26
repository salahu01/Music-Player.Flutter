import 'package:music_app/imports_bindings.dart';

class Routes {
  static Future<String> get initialRoute async {
    return await SessionSource().openBox().then((_) => SessionSource().retriveSession().isEmpty ? Routes.auth : Routes.root);
  }

  static const details = '/details';
  static const favourite = '/favourite';
  static const home = '/home';
  static const offline = '/offline';
  static const online = '/online';
  static const root = '/root';
  static const settings = '/settings';
  static const auth = '/auth';
  static const search = '/search';
  static const playerScreen = '/player-screen';
  static const playLists = '/PlayLists';
  static const playList = '/PlayList';
  static const likedSongs = '/liked-songs';
  static const allArtists = '/all-artists';
  static const singleArtist = '/single-artist';
}
