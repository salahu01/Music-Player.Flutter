import 'package:music_app/imports_bindings.dart';

class Kwidgets {
  static final loading = CircularProgressIndicator(color: Get.iconColor);
  static final noAudios = Text('No audios found !', style: Get.textTheme.headline1);
  static final noPlayLists = Text('No playlists found !', style: Get.textTheme.headline1);
  static const isEmpty = SizedBox();
  static final userNoAvatar = CircleAvatar(backgroundColor: Get.iconColor, child: Icon(Icons.person, color: Get.theme.scaffoldBackgroundColor, size: 30.r));
}
