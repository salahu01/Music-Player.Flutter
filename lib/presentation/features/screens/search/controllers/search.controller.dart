import 'package:music_app/imports_bindings.dart';

class SearchController extends GetxController {
  final tabViews = const [
    OfflineSearchView(),
    OnlineSearchView(),
  ];
}
