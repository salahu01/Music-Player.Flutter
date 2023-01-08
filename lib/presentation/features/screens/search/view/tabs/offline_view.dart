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
              itemCount: controller.seachedSongs.value.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => SongTile(
                isSelected: controller.playerController.isSelected(index: index, songModels: controller.seachedSongs.value),
                onTap: () => controller.playerController.isSelected(index: index, songModels: controller.seachedSongs.value)
                    ? Get.toNamed(Routes.playerScreen)
                    : controller.playerController.playSong(songsModels: controller.seachedSongs.value, index: index),
                songModel: controller.seachedSongs.value[index],
              ),
            ),
          ),
        ).paddingSymmetric(vertical: 8.r),
      ),
    );
  }
}
