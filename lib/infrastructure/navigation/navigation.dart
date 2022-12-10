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
  ];
}
