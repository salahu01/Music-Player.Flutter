import 'package:music_app/imports_bindings.dart';

class PopularArtists extends GetView {
  const PopularArtists({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      width: Get.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => CircleAvatar(
          backgroundColor: AppColors.primarySwatch,
          radius: 25.h,
        ).paddingSymmetric(horizontal: 5.w),
      ),
    );
  }
}
