import 'package:music_app/imports_bindings.dart';

class RootScreen extends GetView<RootController> {
  const RootScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          toolbarHeight: 50.h,
          leadingWidth: 0,
          title: Row(
            children: [
              Hero(
                tag: HeroTags.trueMusicianTag,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(appIcon, height: 35.h),
                ).paddingOnly(right: 10.r),
              ),
              Text('Musician', style: context.textTheme.headline1!.copyWith(fontWeight: FontWeight.bold))
            ],
          ),
          actions: [
            IconButton(onPressed: () => Get.toNamed(Routes.search), icon: Icon(Icons.search, color: context.iconColor)),
            ClipRRect(
              borderRadius: BorderRadius.circular(800),
              child: Image.asset(appIcon),
            ).paddingSymmetric(horizontal: 8.r, vertical: 8.r),
          ],
        ),
        body: controller.screens[controller.currentIndex.value],
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: AnimatedContainer(
          duration: 300.milliseconds,
          height: controller.visibleBottom.value ? 45 : 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              3,
              (index) => GestureDetector(
                onTap: () => controller.changeIndex(index),
                child: Icon(
                  index == controller.currentIndex.value ? controller.selectedIcons[index] : controller.icons[index],
                  size: controller.visibleBottom.value ? 25 : 0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
