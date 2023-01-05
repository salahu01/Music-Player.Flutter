import 'package:music_app/imports_bindings.dart';

class PlayerScreen extends GetView<PlayerController> {
  const PlayerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Get.width * 10.r),
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
              Text(controller.selectedSong.value?.title ?? 'Not found !', style: AppStyles.headline1.copyWith(fontSize: 20.sp, overflow: TextOverflow.ellipsis), maxLines: 1).paddingSymmetric(vertical: 16.r),
              Text(controller.selectedSong.value?.artist ?? 'Unknown !', style: AppStyles.headline2.copyWith(fontSize: 15.sp, overflow: TextOverflow.ellipsis), maxLines: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outlined,color: context.iconColor,size: 20.sp)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.volume_up,color: context.iconColor,size: 20.sp)),
                ],
              ),
              //! Obx(() => ProgressBar(progress: progress, total: total)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.repeat_one,color: context.iconColor,size: 20.sp)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous,color: context.iconColor,size: 50.sp)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.play_circle_fill,color: context.iconColor,size: 50.sp)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.skip_next,color: context.iconColor,size: 50.sp)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.speed,color: context.iconColor,size: 20.sp)),
                ],
              )
            ],
          )),
    ).paddingAll(16.r);
  }
}
