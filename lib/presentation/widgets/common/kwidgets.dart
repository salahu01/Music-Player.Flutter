import 'package:music_app/imports_bindings.dart';

class Kwidgets {
  static Widget get loading => CircularProgressIndicator(color: Get.iconColor);
  static Widget get noAudios => Text(LocaleKeys.noAudiosFound.tr, style: Get.textTheme.headline1);
  static Widget get noPlayLists => Text(LocaleKeys.noPlaylistsFound.tr, style: Get.textTheme.headline1);
  static const isEmpty = SizedBox();
  static showSnackBar(String title, String message) => Get.snackbar(title, message, snackPosition: SnackPosition.BOTTOM);
  static Widget get userNoAvatar => CircleAvatar(backgroundColor: Get.iconColor, child: Icon(Icons.person, color: Get.theme.scaffoldBackgroundColor, size: 30.r));
  static offlineSongDetails(BuildContext context, SongModel s) => showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return ColoredBox(
            color: context.theme.scaffoldBackgroundColor,
            child: SizedBox(
              width: Get.width,
              height: Get.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: AppData.selectedSongDetails(s)
                    .map(
                      (e) => RichText(
                        text: TextSpan(
                          text: e.label,
                          style: TextStyle(fontWeight: FontWeight.w900, color: Get.iconColor!),
                          children: [TextSpan(text: e.value, style: TextStyle(fontWeight: FontWeight.w500, color: Get.iconColor!))],
                        ),
                      ),
                    )
                    .toList(),
              ).paddingOnly(left: 16.r, right: 8.r),
            ),
          );
        },
      );
}
