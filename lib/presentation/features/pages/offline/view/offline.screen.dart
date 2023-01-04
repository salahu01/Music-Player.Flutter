import 'package:music_app/imports_bindings.dart';

class OfflineScreen extends GetView<OfflineController> {
  const OfflineScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.tabViews.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: TabBar(
            tabs: AppData.offlineTabs.map((e) => Tab(text: e)).toList(),
          ),
        ),
        body: TabBarView(children: controller.tabViews),
      ),
    );
  }
}
