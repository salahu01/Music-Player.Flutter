import 'package:music_app/imports_bindings.dart';

class LikedSongsScreen extends GetView<LikedSongsController> {
  const LikedSongsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liked Songs', style: AppStyles.headlineLarge.copyWith(fontSize: 20.sp)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.likedSongs.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) => Obx(() => SongTile(
              isSelected: controller.offlineController.selectedSong.value?.id == controller.likedSongs[index].id,
              onTap: () => controller.offlineController.selectedSong.value?.id == controller.likedSongs[index].id
                  ? Get.toNamed(Routes.playerScreen)
                  : controller.offlineController.playSong(songsModels: controller.likedSongs, index: index),
              songModel: controller.likedSongs[index],
            )),
      ).paddingSymmetric(vertical: 8.r),
    );
  }
}
