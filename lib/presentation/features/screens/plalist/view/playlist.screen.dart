import 'package:music_app/imports_bindings.dart';

class PlayListScreen extends GetView<PlaListController> {
  const PlayListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.playLists.value[controller.selectedPlayList].title, style: AppStyles.headlineLarge.copyWith(fontSize: 20.sp)),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              List<num> ids = [];
              bool selected = false;
              Get.bottomSheet(
                SizedBox(
                  height: Get.height / 2,
                  width: Get.width,
                  child: Column(
                    children: [
                      IconButton(onPressed: () => controller.addSongs(ids), icon: const Icon(Icons.save)),
                      controller.allSongs.isEmpty
                          ? Center(child: Kwidgets.noAudios)
                          : ListView.builder(
                              itemCount: controller.allSongs.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) => Obx(() {
                                selected = controller.playLists.value[controller.selectedPlayList].playListIds.contains(controller.allSongs[index].id);
                                selected ? ids.add(controller.allSongs[index].id) : null;
                                return AddSongToPlayListTile(
                                  selectedIds: ids,
                                  songModel: controller.allSongs[index],
                                  isAdded: ValueNotifier(selected),
                                );
                              }),
                            ).paddingSymmetric(vertical: 8.r)
                    ],
                  ),
                ),
                backgroundColor: Get.theme.scaffoldBackgroundColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(16.r), topRight: Radius.circular(16.r)), side: BorderSide(color: Get.iconColor!, width: 1)),
              );
            },
            child: Icon(Icons.add, size: 30.sp).paddingOnly(right: 16.r),
          ),
        ],
      ),
      body: Obx(
        () {
          if (controller.playLists.value[controller.selectedPlayList].playListIds.isEmpty) {
            return Center(child: Kwidgets.noAudios);
          }
          final songs = controller.allSongs.where((s) => controller.playLists.value[controller.selectedPlayList].playListIds.contains(s.id)).toList();
          return ListView.builder(
            itemCount: songs.length,
            itemBuilder: (BuildContext context, int index) => Obx(() => SongTile(
                  isSelected: controller.playerController.isSelected(index: index, songModels: songs),
                  onTap: () => controller.playerController.selectedSong.value?.id == songs[index].id ? Get.toNamed(Routes.playerScreen) : controller.playerController.playSong(songsModels: songs, index: index),
                  songModel: songs[index],
                )),
          ).paddingSymmetric(vertical: 8.r);
        },
      ),
    );
  }
}
