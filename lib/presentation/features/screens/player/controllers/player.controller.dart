import 'package:music_app/imports_bindings.dart';

class PlayerController extends GetxController {
  //*The onInit() is a method that is called when an object for OfflineController is created and inserted inside the widget tree
  @override
  void onInit() {
    selectedSong.value = _playerServices.playingSongModel.value;
    changeCurrentSong();
    changeProgressBarTime();
    super.onInit();
  }

  @override
  void onReady() {
    checkFavouriteExist();
    super.onReady();
  }

  //* This variable using to store player services object ( for creating instance of PlayerServices class )
  final PlayerServices _playerServices = PlayerServices();

  //* This variable using to store offline song storage services object ( for creating instance of OfflineSongsStorage class )
  final OfflineSongsStorage _offlineSongsStorage = OfflineSongsStorage();

  //*This Variable using to store current playing Or current Selected song creadential Or Datas ⛏️
  Rx<SongModel?> selectedSong = Rx(null);

  //*This Variable using to store current audio time ⬛⬛⬛⬜⬜
  Rx<AudioTimeModel?> progressBarTime = Rx(null);

  //* This variable using change play or pause button
  Rx<bool> isPlaying = Rx(false);

  //* This variable using change favourite add && remove button
  Rx<bool> isFavourite = Rx(false);

  //* This methord using change player screen when changing the current song 🎧
  void changeCurrentSong() {
    _playerServices.playingSongModel.addListener(() {
      selectedSong.value = _playerServices.playingSongModel.value;
      checkFavouriteExist(); //*This call for current song exist in favourites 
    });
    _playerServices.player.playingStream.listen((playing) {
      isPlaying.value = playing;
    });
  }

  // * This methord using change player screen when changing the current song 🔃
  void changeProgressBarTime() {
    _playerServices.player
      ..durationStream.listen((duration) {
        progressBarTime.value = progressBarTime.value?.copyWith(total: duration ?? Duration.zero) ?? AudioTimeModel(total: duration ?? Duration.zero, buffred: Duration.zero, position: Duration.zero);
      })
      ..positionStream.listen((position) {
        progressBarTime.value = progressBarTime.value?.copyWith(current: position);
      });
  }

  //* This methord for chack selected song contains in favourite
  void checkFavouriteExist() {
    isFavourite.value = _offlineSongsStorage.checkFavouriteSong(id: selectedSong.value!.id);
  }

  //* This methord for store and remove song from favourite
  void addOrRemoveFavourite() async {
    if (isFavourite.value == true) {
      await _offlineSongsStorage.removeSongFromFavourite(id: selectedSong.value!.id);
      isFavourite.value = false;
    } else {
      await _offlineSongsStorage.storeFavouriteSong(id: selectedSong.value!.id);
      isFavourite.value = true;
    }
  }

  //* This methord for change progress bar position by click by user  ⬛⬛⬛⬜⬜
  void changeProgressPosition(Duration position) {
    _playerServices.changePosition(position: position);
  }

  //* This methord for controll song play pause ▶️⏸️
  void playOrPause() {
    _playerServices.pauseOrPlay();
  }

  //* This methord for play next song ⏭️
  void skipToNext() {
    _playerServices.nextPlay();
  }

  //* This methord for play previous song ⏭️
  void skipToPrevious() {
    _playerServices.previousPlay();
  }
}
