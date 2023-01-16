import 'package:music_app/imports_bindings.dart';

class PlaListsScreen extends GetView<PlaListController> {
  const PlaListsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Play Lists', style: AppStyles.headlineLarge.copyWith(fontSize: 20.sp)),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              final title = TextEditingController();
              final formKey = GlobalKey<FormState>();
              Get.dialog(
                Form(
                  key: formKey,
                  child: AlertDialog(
                    backgroundColor: Get.iconColor,
                    title: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: title,
                        validator: (t) => t!.isEmpty ? 'This field is required !' : null,
                        decoration: InputDecoration(
                            hintText: 'PlayList Title ....', fillColor: Get.theme.scaffoldBackgroundColor, hintStyle: Get.theme.inputDecorationTheme.hintStyle!.copyWith(color: Get.iconColor))),
                    actions: [
                      TextButton(onPressed: () => Get.back(), child: Text('Cancel', style: AppStyles.headline2.copyWith(color: Get.theme.scaffoldBackgroundColor, fontWeight: FontWeight.bold))),
                      TextButton(
                          onPressed: () => {
                                formKey.currentState!.validate() ? {controller.createPlayList(title.text), Get.back()} : null
                              },
                          child: Text('Save', style: AppStyles.headline2.copyWith(color: Get.theme.scaffoldBackgroundColor, fontWeight: FontWeight.bold))),
                    ],
                  ),
                ),
              );
            },
            child: Icon(Icons.playlist_add, size: 30.sp).paddingOnly(right: 16.r),
          ),
        ],
      ),
      body: Obx(
        () {
          if (controller.playLists.value.isEmpty) {
            return Center(child: Kwidgets.noPlayLists);
          }
          return ListView.builder(
            itemCount: controller.playLists.value.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: ()=> controller.toPlayListScreen(index),
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
          );
        },
      ),
    );
  }
}
