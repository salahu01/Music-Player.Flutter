import 'package:music_app/imports_bindings.dart';

class PlalistScreen extends GetView<PlalistController> {
  const PlalistScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Play Lists', style: AppStyles.headlineLarge.copyWith(fontSize: 20.sp)),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.playlist_add, size: 30.sp).paddingOnly(right: 16.r),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: context.iconColor,
            margin: EdgeInsets.symmetric(horizontal: 32.r, vertical: 16.r),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
            child: Center(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Flexible(child: Text('True Musician', style: AppStyles.trueMusition.copyWith(color: context.theme.scaffoldBackgroundColor), overflow: TextOverflow.ellipsis, maxLines: 1)),
                Icon(Icons.queue_music, color: context.theme.scaffoldBackgroundColor, size: 30.sp)
              ]).paddingSymmetric(horizontal: 16.r, vertical: 20.r),
            ),
          );
        },
      ),
    );
  }
}
