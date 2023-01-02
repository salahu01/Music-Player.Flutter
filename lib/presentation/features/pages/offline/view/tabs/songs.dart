import 'package:music_app/imports_bindings.dart';

class SongsTab extends GetView<OfflineController> {
  const SongsTab({required this.scrollController, Key? key}) : super(key: key);
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(onLoading: Center(child: CircularProgressIndicator(color: context.iconColor)), (state) {
        if (controller.songs.isEmpty) {
          return Center(child: Text('No songs found !', style: context.textTheme.headline1));
        }
        return ListView.builder(
            itemCount: controller.songs.length,
            shrinkWrap: true,
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) => SongTile(index: index, selectedIndex: 8, songModel: controller.songs[index])).paddingSymmetric(vertical: 8.r);
      }),
    );
  }
}
