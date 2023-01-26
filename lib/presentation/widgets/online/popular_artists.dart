import 'package:music_app/imports_bindings.dart';

class PopularArtists extends GetView<OnlineController> {
  const PopularArtists({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (controller.topArtists.value == null) {
          return SizedBox(
            height: 120.h,
            width: Get.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CircleAvatar(
                    backgroundColor: context.iconColor,
                    radius: 28.h,
                    child: CircleAvatar(
                      backgroundColor: context.theme.scaffoldBackgroundColor,
                      radius: 26.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30000),
                        child: const ImageNetwork(imageUrl: ''),
                      ).pad(4.h),
                    ),
                  ).paddingOnly(right: 12);
                }),
          );
        }
        return controller.topArtists.value!.fold(
          (l) => Kwidgets.isEmpty,
          (r) => SizedBox(
            height: 120.h,
            width: Get.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 11,
              itemBuilder: (context, index) {
                if (index == 10) {
                  return InkWell(
                    onTap: () => Get.toNamed(Routes.allArtists,arguments: {'artists':r}),
                    child: CircleAvatar(
                      backgroundColor: context.iconColor,
                      radius: 24.r,
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: context.theme.scaffoldBackgroundColor,
                      ),
                    ),
                  );
                }
                return CircleAvatar(
                  backgroundColor: context.iconColor,
                  radius: 28.h,
                  child: CircleAvatar(
                    backgroundColor: context.theme.scaffoldBackgroundColor,
                    radius: 26.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30000),
                      child: ImageNetwork(imageUrl: r.artists?[index]?.visuals?.avatar?[0]?.img ?? '', width: double.maxFinite, height: double.maxFinite),
                    ).pad(4.h),
                  ),
                ).paddingOnly(right: 12);
              },
            ),
          ),
        );
      },
    );
  }
}
