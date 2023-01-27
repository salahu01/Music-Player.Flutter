import 'package:music_app/imports_bindings.dart';

class ArtistDetailsScreen extends GetView<ArtistDetailsController> {
  const ArtistDetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.singleArtistEntity.artistName ?? '', style: AppStyles.headlineLarge.copyWith(fontSize: 20.sp), maxLines: 1, overflow: TextOverflow.ellipsis),
        centerTitle: true,
      ),
      body: Obx(
        () {
          write(controller.artistDetails.value.toString());
          if (controller.artistDetails.value == null) {
            return Center(child: Kwidgets.loading);
          }
          return controller.artistDetails.value!.fold(
            (l) => const Center(child: Kwidgets.isEmpty),
            (r) => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32.r),
                      child: ImageNetwork(
                        imageUrl: r.visuals?.avatar?[0].url ?? r.visuals?.header?[0].url ?? '',
                        height: 180.h,
                        width: 180.h,
                      ),
                    ),
                  ),
                  Text('Overview : ', style: AppStyles.headline2.copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp)).paddingOnly(top: 16.r, left: 12.r, right: 12.r),
                  Text(r.biography ?? '', style: AppStyles.headline2.copyWith(fontWeight: FontWeight.bold, color: Get.iconColor!.withOpacity(0.7)), overflow: TextOverflow.ellipsis, maxLines: 5)
                      .paddingOnly(top: 8.r, left: 12.r, right: 12.r),
                  Text('Popular Tracks : ', style: AppStyles.headline2.copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp)).paddingOnly(top: 16.r, left: 12.r, right: 12.r),
                  ListView.builder(
                    itemCount: r.discography?.topTracks?.length ?? 0,
                    shrinkWrap: true,
                    primary: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) => ListTile(
                      onTap: () {},
                      leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: ImageNetwork(imageUrl: r.discography?.topTracks?[index].album?.cover?[0].url ?? '', height: 40.h, width: 40.h, fit: BoxFit.cover)),
                      title: Text(
                        r.discography?.topTracks?[index].name ?? '',
                        style: context.textTheme.headline2!.copyWith(color: context.theme.colorScheme.primary, overflow: TextOverflow.ellipsis, fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                      subtitle: Text(
                        r.discography?.topTracks?[index].durationText ?? 'unknown',
                        style: context.textTheme.headline2!.copyWith(color: context.theme.colorScheme.primary, fontWeight: FontWeight.w900, overflow: TextOverflow.ellipsis),
                        maxLines: 1,
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
                    ).paddingSymmetric(horizontal: 16.r),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
