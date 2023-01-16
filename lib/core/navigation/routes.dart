class Routes {
  static Future<String> get initialRoute async {
    return auth;
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
}
