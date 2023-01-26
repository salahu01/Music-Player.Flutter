import 'package:music_app/imports_bindings.dart';

class SingleArtistControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ArtistDetailsController(),
    );
  }
}
