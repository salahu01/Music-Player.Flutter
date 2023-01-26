import 'package:music_app/imports_bindings.dart';

class ArtistDetailsController extends GetxController {
  @override
  void onInit() {
    singleArtistEntity = Get.arguments['singleArtistEntity'];
    getArtistDetails();
    super.onInit();
  }

  //* This variable for geting artist methords
  final ArtistDetailsApiRepo _artistDetailsApiRepo = Get.put(ArtistDetailsApiRepo());

  //* This variable using to store selected artist id
  late SingleArtistEntity singleArtistEntity;

  //* This variable using to store Artist Details
  late Rx<Either<String, ArtistDetailsEntity>?> artistDetails = Rx(null);

  //* This methord for get Artist Details
  void getArtistDetails() async {
    artistDetails.value = null;
    artistDetails.value = await _artistDetailsApiRepo.getArtistDetails(singleArtistEntity.artistId ?? '');
    artistDetails.value?.fold((l) => Get.snackbar('Oops!', l), (r) {});
  }
}
