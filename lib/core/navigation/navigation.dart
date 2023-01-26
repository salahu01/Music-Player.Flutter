import 'package:music_app/imports_bindings.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.root,
      page: () => const RootScreen(),
      binding: RootControllerBinding(),
    ),
    GetPage(
      name: Routes.offline,
      page: () => const OfflineScreen(),
      binding: OfflineControllerBinding(),
    ),
    GetPage(
      name: Routes.online,
      page: () => const OnlineScreen(),
      binding: OnlineControllerBinding(),
    ),
    GetPage(
      name: Routes.settings,
      page: () => const SettingsScreen(),
      binding: SettingsControllerBinding(),
    ),
    GetPage(
      name: Routes.auth,
      page: () => const AuthScreen(),
      binding: AuthControllerBinding(),
    ),
    GetPage(
      name: Routes.search,
      page: () => const SearchScreen(),
      binding: SearchControllerBinding(),
    ),
    GetPage(
      name: Routes.playerScreen,
      page: () => const PlayerScreen(),
      binding: PlayerControllerBinding(),
    ),
    GetPage(
      name: Routes.playLists,
      page: () => const PlaListsScreen(),
      binding: PlalistControllerBinding(),
    ),
    GetPage(
      name: Routes.playList,
      page: () => const PlayListScreen(),
      binding: PlalistControllerBinding(),
    ),
    GetPage(
      name: Routes.likedSongs,
      page: () => const LikedSongsScreen(),
      binding: LikedSongsControllerBinding(),
    ),
    GetPage(
      name: Routes.allArtists,
      page: () => AllArtistsScreen(),
    ),
    GetPage(
      name: Routes.singleArtist,
      page: () => const ArtistDetailsScreen(),
      binding: SingleArtistControllerBinding(),
    ),
  ];
}
