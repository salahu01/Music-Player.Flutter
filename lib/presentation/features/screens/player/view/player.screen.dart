import 'package:music_app/imports_bindings.dart';

class PlayerScreen extends GetView<PlayerController> {
  const PlayerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.h,
        leading: IconButton(onPressed: () => Get.back(), icon: Icon(Icons.arrow_back, color: context.iconColor)),
        actions: [IconButton(onPressed: () => Kwidgets.songDetails(context), icon: Icon(Icons.more_vert, color: context.iconColor))],
      ),
      body: Obx(() => Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Spacer(),
            Stack(children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Get.width * 10.r),
                  child: GestureDetector(
                    onHorizontalDragEnd: controller.drargAction,
                    onTap: controller.hideAll,
                    child: SizedBox(
                      height: Get.width * 0.7,
                      width: Get.width * 0.7,
                      child: FutureBuilder(
                        future: OnAudioQuery.platform.queryArtwork(controller.selectedSong.value!.id, ArtworkType.AUDIO),
                        builder: (context, snapshot) {
                          if (snapshot.data == null || (snapshot.data?.isEmpty ?? false)) {
                            return Image.asset(appIcon, fit: BoxFit.cover);
                          } else {
                            return Image.memory(snapshot.data!, fit: BoxFit.cover);
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Obx(() => Visibility(
                      visible: controller.isVolumeShow.value,
                      child: RotatedBox(quarterTurns: 3, child: Slider(value: controller.volume.value, onChanged: controller.changeVolume, min: 0, max: 1, divisions: 100)),
                    )),
                Obx(() => Visibility(
                      visible: controller.isSpeedShow.value,
                      child: RotatedBox(quarterTurns: 3, child: Slider(value: controller.speed.value, onChanged: controller.changeSpeed, min: 0, max: 2, divisions: 10)),
                    ))
              ])
            ]),
            const Spacer(),
            Text(controller.selectedSong.value?.title ?? 'Not found !', style: AppStyles.headline1.copyWith(fontSize: 20.sp, overflow: TextOverflow.ellipsis), maxLines: 1)
                .paddingSymmetric(vertical: 8.r),
            Text(controller.selectedSong.value?.artist ?? 'Unknown !', style: AppStyles.headline2.copyWith(fontSize: 15.sp, overflow: TextOverflow.ellipsis), maxLines: 1)
                .paddingSymmetric(vertical: 8.r),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => IconButton(
                    onPressed: controller.addOrRemoveFavourite,
                    icon: Icon(controller.isFavourite.value ? Icons.favorite_outlined : Icons.favorite_border_outlined, color: context.iconColor, size: 20.sp))),
                IconButton(onPressed: controller.showOrHideVolume, icon: Icon(Icons.volume_up, color: context.iconColor, size: 20.sp)),
              ],
            ).paddingSymmetric(vertical: 8.r),
            Obx(() => ProgressBar(
                progress: controller.progressBarTime.value?.position ?? Duration.zero, total: controller.progressBarTime.value?.total ?? Duration.zero, onSeek: controller.changeProgressPosition)),
            const Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Obx(() => IconButton(onPressed: controller.changeLoopMode, icon: Icon(repeateIcon(controller.loopMode.value), color: context.iconColor, size: 20.sp))),
              IconButton(onPressed: controller.skipToPrevious, icon: Icon(Icons.skip_previous, color: context.iconColor, size: 50.sp)),
              Obx(() =>IconButton(onPressed: controller.playOrPause, icon: Icon(controller.isPlaying.value ? Icons.pause_circle_filled : Icons.play_circle_fill, color: context.iconColor, size: 60.sp))),
              IconButton(onPressed: controller.skipToNext, icon: Icon(Icons.skip_next, color: context.iconColor, size: 50.sp)),
              IconButton(onPressed: controller.showOrHideSpeed, icon: Icon(Icons.speed, color: context.iconColor, size: 20.sp)),
            ]),
            const Spacer(),
          ])).paddingAll(16.r),
    );
  }

  IconData repeateIcon(LoopMode loopMode) {
    switch (loopMode) {
      case LoopMode.one:
        return Icons.repeat_one;
      case LoopMode.off:
        return Icons.repeat;
      default:
        return Icons.all_inclusive;
    }
  }
}
