import 'package:music_app/domain/entities/artist_details.dart';
import 'package:music_app/imports_bindings.dart';

class ArtistDetailsController extends GetxController {
  @override
  void onInit() {
    singleArtistEntity = Get.arguments['singleArtistEntity'];
    getArtistDetails();
    super.onInit();
  }

  //* This variable for geting online track methords
  final DownloadTrackApiRepo _downloadTrackApiRepo = Get.put(DownloadTrackApiRepo());

  //* This variable for geting artist methords
  final ArtistDetailsApiRepo _artistDetailsApiRepo = Get.put(ArtistDetailsApiRepo());

  //* This variable using to store selected artist id
  late SingleArtistEntity singleArtistEntity;

  //* This variable using to store Artist Details
  Rx<Either<String, ArtistDetailsEntity>?> artistDetails = Rx(null);

  //* This variable using to store Artist Details
  Rx<Either<String, DownloadTrackEntity>?> onlineTrack = Rx(null);

  //* This variable using to loading
  Rx<int?> selectedIndex = Rx(null);

  //* This methord for get Artist Details
  void getArtistDetails() async {
    artistDetails.value = null;
    artistDetails.value = await _artistDetailsApiRepo.getArtistDetails(singleArtistEntity.artistId ?? '');
    artistDetails.value?.fold((l) => Get.snackbar('Oops!', l), (r) {});
  }

  //* This methord for get Artist Details
  void downloadTrack(int index) async {
    selectedIndex.value = index;
    onlineTrack.value = null;
    TopTracks? track;
    await artistDetails.value?.fold((l) {}, (r) async {
      track = r.discography?.topTracks?[index];
      return onlineTrack.value = await _downloadTrackApiRepo.downloadTrack(track?.id);
    });

    onlineTrack.value?.fold((l) => Get.snackbar('Oops!', l), (r) => Get.toNamed(Routes.playerScreen, arguments: {'track': r, 'track_details': track}));
    selectedIndex.value = null;
  }
}
