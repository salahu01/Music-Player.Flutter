import 'package:music_app/imports_bindings.dart';

class Kwidgets {
  static final loading = CircularProgressIndicator(color: Get.iconColor);
  static final isEmpty = Text('No audios found !', style: Get.textTheme.headline1);
  static final userNoAvatar = CircleAvatar(backgroundColor: Get.iconColor, child: Icon(Icons.person, color: Get.theme.scaffoldBackgroundColor, size: 30.r));
}
