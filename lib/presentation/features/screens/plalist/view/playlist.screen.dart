import 'package:music_app/imports_bindings.dart';

class PlayListScreen extends GetView<PlaListController> {
  const PlayListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.selectedPlayList.title, style: AppStyles.headlineLarge.copyWith(fontSize: 20.sp)),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
            
            },
            child: Icon(Icons.add, size: 30.sp).paddingOnly(right: 16.r),
          ),
        ],
      ),
      body: controller.selectedPlayList.playListIds.isEmpty
          ? Center(child: Kwidgets.noAudios)
          : ListView.builder(
              itemCount: controller.playLists.value.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {},
                  child: Card(
                    color: context.iconColor,
                    margin: EdgeInsets.symmetric(horizontal: 16.r, vertical: 8.r),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
                    child: Center(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                        Flexible(
                            child: Text(controller.playLists.value[index].title,
                                style: AppStyles.trueMusition.copyWith(color: context.theme.scaffoldBackgroundColor), overflow: TextOverflow.ellipsis, maxLines: 1)),
                        PopupMenuButton<String>(
                            child: Icon(Icons.more_vert, color: context.theme.scaffoldBackgroundColor, size: 30.sp),
                            itemBuilder: (context) => AppData.playListMore
                                .map((e) => PopupMenuItem<String>(
                                    value: e.label,
                                    child: Button.label(label: e.label, icon: e.icon, iconColor: context.theme.scaffoldBackgroundColor, labelColor: context.theme.scaffoldBackgroundColor)))
                                .toList()).paddingSymmetric(horizontal: 8.r),
                      ]).paddingSymmetric(horizontal: 16.r, vertical: 12.r),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
