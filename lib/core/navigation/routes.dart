class Routes {
  static Future<String> get initialRoute async {
    return auth;
  }

  static const details = '/details';
  static const favourite = '/favourite';
  static const home = '/home';
  static const offline = '/offline';
  static const online = '/online';
  static const playlist = '/playlist';
  static const root = '/root';
  static const settings = '/settings';
  static const auth = '/auth';
  static const search = '/search';
  static const playerScreen = '/player-screen';
}