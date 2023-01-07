import 'package:music_app/imports_bindings.dart';

class OfflineSearchView extends GetView<SearchController> {
  const OfflineSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => Obx(
          () => Obx(
            () => ListView.builder(
              itemCount: 50,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => SongTile(
                isSelected: controller.offlineController.selectedSong.value?.id == controller.seachedSongs.value[index].id,
                onTap: () => controller.offlineController.selectedSong.value?.id == controller.offlineController.albums[index].id
                    ? Get.toNamed(Routes.playerScreen)
                    : controller.offlineController.playSong(songsModels: controller.seachedSongs.value, index: index),
                songModel: controller.seachedSongs.value[index],
              ),
            ),
          ),
        ).paddingSymmetric(vertical: 8.r),
      ),
    );
  }
}
