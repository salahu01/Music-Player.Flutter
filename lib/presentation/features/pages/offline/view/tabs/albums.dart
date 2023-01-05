import 'package:music_app/imports_bindings.dart';

class AlbumsTab extends GetView<OfflineController> {
  const AlbumsTab({required this.scrollController, Key? key}) : super(key: key);
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: PreferredSize(
            preferredSize: Size(Get.width, 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PopupMenuButton<SortTypeModel>(
                    initialValue: controller.albumsSortType.value,
                    child: Button.label(label: controller.albumsSortType.value.label, icon: controller.albumsSortType.value.icon),
                    onSelected: (sortType) => controller.sortSongs(sortTypeModel: sortType, isAlbum: true),
                    itemBuilder: (context) => AppData.sortTypeOptions
                        .map((e) => PopupMenuItem<SortTypeModel>(
                            value: e, child: Button.label(label: e.label, icon: e.icon, iconColor: context.theme.scaffoldBackgroundColor, labelColor: context.theme.scaffoldBackgroundColor)))
                        .toList()).paddingSymmetric(horizontal: 8.r),
                PopupMenuButton<SortOrderModel>(
                    initialValue: controller.tracksSortOrder.value,
                    child: Button.label(label: controller.tracksSortOrder.value.label, icon: controller.tracksSortOrder.value.icon),
                    onSelected: (sortOrder) => controller.sortSongs(sortOrderModel: sortOrder, isAlbum: true),
                    itemBuilder: (context) => AppData.sortOrderOPtions
                        .map((e) => PopupMenuItem<SortOrderModel>(
                            value: e, child: Button.label(label: e.label, icon: e.icon, iconColor: context.theme.scaffoldBackgroundColor, labelColor: context.theme.scaffoldBackgroundColor)))
                        .toList()).paddingSymmetric(horizontal: 8.r),
              ],
            ).paddingSymmetric(horizontal: 24.r),
          ),
        ),
        body: controller.obx(
          onLoading: Center(child: CircularProgressIndicator(color: context.iconColor)),
          (state) {
            if (controller.tracks.isEmpty) {
              return Center(child: Text('No albums found !', style: context.textTheme.headline1));
            }
            return ListView.builder(
              itemCount: 50,
              shrinkWrap: true,
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => Obx(() => SongTile(
                    isSelected: controller.isSelected(index: index, isSongs: false),
                    onTap: () => controller.selectedSong.value?.id == controller.albums[index].id
                      ? Get.toNamed(Routes.playerScreen, arguments: {'song_model': controller.albums[index]})
                      : controller.playSong(isTracks: false, index: index),
                    songModel: controller.albums[index],
                  )),
            ).paddingSymmetric(vertical: 8.r);
          },
        ),
      ),
    );
  }
}
