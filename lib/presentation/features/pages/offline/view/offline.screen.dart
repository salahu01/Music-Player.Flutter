import 'package:music_app/imports_bindings.dart';

class OfflineScreen extends GetView<OfflineController> {
  const OfflineScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: TabBar(
            tabs: AppData.offlineTabs.map((e) => Tab(text: e)).toList(),
          ),
        ),
        body: TabBarView(
          children: [
            TracksTab(scrollController: Get.find<RootController>().offlineTracksController.value),
            AlbumsTab(scrollController: Get.find<RootController>().offlineAlbumCotroller.value),
            const OthersTab()
          ],
        ),
      ),
    );
  }
}
