import 'package:music_app/imports_bindings.dart';

class SearchScreen extends GetView<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.tabViews.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Online'),
              Tab(text: 'Offline'),
            ],
          ),
        ),
        body: TabBarView(children: controller.tabViews),
      ),
    );
  }
}
