import 'package:music_app/imports_bindings.dart';

class OnlineController extends GetxController {
  @override
  void onInit() {
    getTopArtist();
    super.onInit();
  }

  //* This variable for geting artist methords
  final ArtistApiRepo _artistApiRepo = Get.put(ArtistApiRepo());

  //* This variable using to store TopArtists
  Rx<Either<String, TopArtistsEntity>?> topArtists = Rx(null);

  void getTopArtist() async {
    topArtists.value = await _artistApiRepo.getTopArtists();
    topArtists.value!.fold((l) => Get.snackbar('Oops!', l), (r){});
  }
}
