import 'package:music_app/imports_bindings.dart';

class SearchScreen extends GetView<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.tabViews.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60.h,
          title: TextField(
            style: AppStyles.headline1.copyWith(color: context.iconColor),
            cursorColor: context.iconColor,
            decoration: InputDecoration(
              fillColor: context.theme.scaffoldBackgroundColor,
              filled: true,
              hintText: 'Search songs',
              hintStyle: context.theme.inputDecorationTheme.hintStyle!.copyWith(color: context.iconColor),
              prefixIcon: InkWell(
                onTap: () => Get.back(),
                child: Icon(Icons.arrow_back, color: context.iconColor, size: 25),
              ),
            ),
          ),
          leading: const SizedBox(),
          leadingWidth: 0,
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
