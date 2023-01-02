import 'package:music_app/imports_bindings.dart';

class AlbumsTab extends GetView<OfflineController> {
  const AlbumsTab({required this.scrollController, Key? key}) : super(key: key);
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        onLoading: Center(child: CircularProgressIndicator(color: context.iconColor)),
        (state) {
          return ListView.builder(
              itemCount: 50,
              shrinkWrap: true,
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => SongTile(index: index, selectedIndex: 5, songModel: controller.albums[index])).paddingSymmetric(vertical: 8.r);
        },
      ),
    );
  }
}
