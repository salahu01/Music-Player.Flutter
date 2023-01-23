import 'package:music_app/imports_bindings.dart';

class Kwidgets {
  static final loading = CircularProgressIndicator(color: Get.iconColor);
  static final noAudios = Text('No audios found !', style: Get.textTheme.headline1);
  static final noPlayLists = Text('No playlists found !', style: Get.textTheme.headline1);
  static const isEmpty = SizedBox();
  static final userNoAvatar = CircleAvatar(backgroundColor: Get.iconColor, child: Icon(Icons.person, color: Get.theme.scaffoldBackgroundColor, size: 30.r));
  static songDetails(BuildContext context, SongModel s) => showCupertinoModalPopup(
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
      });
}
