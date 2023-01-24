import 'package:music_app/imports_bindings.dart';

class LikedSongsScreen extends GetView<LikedSongsController> {
  const LikedSongsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.likedSongs.tr, style: AppStyles.headlineLarge.copyWith(fontSize: 20.sp)),
        centerTitle: true,
      ),
      body: controller.obx(
        onLoading: Center(child: Kwidgets.loading),
        onEmpty: Center(child: Kwidgets.noAudios),
        (state) => ListView.builder(
          itemCount: controller.likedSongs.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) => Obx(() => SongTile(
                isSelected: controller.playerController.isSelected(index: index, songModels: controller.likedSongs),
                onTap: () => controller.playerController.isSelected(index: index, songModels: controller.likedSongs)
                    ? Get.toNamed(Routes.playerScreen)
                    : controller.playerController.playSong(songsModels: controller.likedSongs, index: index),
                songModel: controller.likedSongs[index],
              )),
        ).paddingSymmetric(vertical: 8.r),
      ),
    );
  }
}
