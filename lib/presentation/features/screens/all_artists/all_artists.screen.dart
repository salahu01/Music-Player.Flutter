import 'package:music_app/imports_bindings.dart';

class AllArtistsScreen extends StatelessWidget {
  AllArtistsScreen({Key? key}) : super(key: key);
  final artistModel = Get.arguments['artists'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artists', style: AppStyles.headlineLarge.copyWith(fontSize: 20.sp)),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: artistModel.artists?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => Get.toNamed(Routes.singleArtist, arguments: {'singleArtistEntity': artistModel.artists?[index]}),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30000),
                  child: ImageNetwork(
                    imageUrl: artistModel.artists?[index]?.visuals?.avatar?[0]?.img ?? '',
                    height: 60.h,
                    width: 60.h,
                    fit: BoxFit.cover,
                  ),
                ).pad(2.r),
                Text(
                  artistModel.artists?[index]?.artistName ?? '',
                  style: AppStyles.headline2.copyWith(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
          );
        },
      ).paddingSymmetric(horizontal: 4.r),
    );
  }
}
