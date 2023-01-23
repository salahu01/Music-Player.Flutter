import 'package:music_app/imports_bindings.dart';

class Kwidgets {
  static final loading = CircularProgressIndicator(color: Get.iconColor);
  static final noAudios = Text('No audios found !', style: Get.textTheme.headline1);
  static final noPlayLists = Text('No playlists found !', style: Get.textTheme.headline1);
  static const isEmpty = SizedBox();
  static final userNoAvatar = CircleAvatar(backgroundColor: Get.iconColor, child: Icon(Icons.person, color: Get.theme.scaffoldBackgroundColor, size: 30.r));
  static final songDetails = showCupertinoModalPopup(
      context: Get.context!,
      builder: (context) {
        return ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(32.r), topRight: Radius.circular(32.r)),
          child: ColoredBox(
            color: context.iconColor!,
            child: SizedBox(
              width: Get.width,
              height: Get.height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: AppData.selectedSongDetails
                    .map(
                      (e) => RichText(
                        text: TextSpan(
                          text: e.label,
                          style: const TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
                          children: [TextSpan(text: e.value, style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.black))],
                        ),
                      ),
                    )
                    .toList(),
              ).paddingOnly(left: 16.r, right: 8.r),
            ),
          ),
        );
      });
}
