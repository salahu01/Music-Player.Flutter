import 'package:music_app/imports_bindings.dart';

class OfflineSearchView extends GetView<SearchCtrl> {
  const OfflineSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        onLoading: Center(child: Kwidgets.noAudios),
        onEmpty: Center(child: Kwidgets.noAudios),
        (state) => ListView.builder(
          itemCount: controller.searchedSongs.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) => Obx(
            () => SongTile(
              isSelected: controller.playerController.isSelected(index: index, songModels: controller.searchedSongs),
              onTap: () => controller.playerController.isSelected(index: index, songModels: controller.searchedSongs)
                  ? Get.toNamed(Routes.playerScreen)
                  : controller.playerController.playSong(songsModels: controller.searchedSongs, index: index),
              songModel: controller.searchedSongs[index],
            ),
          ),
        ).paddingSymmetric(vertical: 16.r),
      ),
    );
  }
}
