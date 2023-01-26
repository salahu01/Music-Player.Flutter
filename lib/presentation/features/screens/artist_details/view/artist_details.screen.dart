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
            (r) => Column(
              children: const [],
            ),
          );
        },
      ),
    );
  }
}
