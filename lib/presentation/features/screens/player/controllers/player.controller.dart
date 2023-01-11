import 'package:music_app/imports_bindings.dart';

class PlayerController extends GetxController {
  //* This constructor body for creating singleton widget
  factory PlayerController() {
    _playerController == null ? {_playerController = PlayerController._internel()} : null;
    return _playerController!;
  }

  //* This named constructor for create object for this class
  PlayerController._internel();

  //* This variable for store this class object globally
  static PlayerController? _playerController;

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

  //*This varaible for store loop mode
  Rx<LoopMode> loopMode = Rx(LoopMode.off);

  //* This methord using to check current playing songs ListTile ( for highlight selected song tile )
  bool isSelected({required int index, required List<SongModel> songModels}) {
    if (selectedSong.value == null) {
      return false;
    }
    return songModels[index].id == selectedSong.value!.id;
  }

  //* This methord using to play current selected song
  void playSong({required List<SongModel> songsModels, required int index}) async {
    await _playerServices.play(songModels: songsModels, index: index);
    selectedSong.value = songsModels[index];
    _playerServices.playingSongModel.listen((playingSongModel) {
      selectedSong.value = playingSongModel;
    });
  }

  //* This methord using change player screen when changing the current song 🎧
  void changeCurrentSong() {
    _playerServices.playingSongModel.listen((playingSongModel) {
      selectedSong.value = playingSongModel;
      checkFavouriteExist(); //*This call for current song exist in favourites
    });
    _playerServices.player.playingStream.listen((playing) {
      isPlaying.value = playing;
    });
  }

  //* This methord using change player loop mode
  void changeLoopMode() {
    _playerServices.loopMode();
  }

  // * This methord using change player screen when changing the current song 🔃
  void changeProgressBarTime() {
    _playerServices.player
      ..durationStream.listen((duration) {
        progressBarTime.value = progressBarTime.value?.copyWith(total: duration ?? Duration.zero) ?? AudioTimeModel(total: duration ?? Duration.zero, buffred: Duration.zero, position: Duration.zero);
      })
      ..positionStream.listen((position) {
        progressBarTime.value = progressBarTime.value?.copyWith(position: position);
      })
      ..loopModeStream.listen((isLoopMode) {
        loopMode.value = isLoopMode;
      });
  }

  //* This methord for chack selected song contains in favourite
  void checkFavouriteExist() {
    try {
      isFavourite.value = _offlineSongsStorage.checkFavouriteSong(id: selectedSong.value!.id);
    } catch (e) {
      write('can\'t check favorite song !');
    }
  }

  //* This methord for store and remove song from favourite
  void addOrRemoveFavourite() async {
    if (isFavourite.value == true) {
      _offlineSongsStorage.removeSongFromFavourite(id: selectedSong.value!.id);
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

  //* This methord for make action based on user dragging
  void drargAction(DragEndDetails dragDownDetails) {
    if (dragDownDetails.primaryVelocity! < 0) {
      skipToNext();
    } else if (dragDownDetails.primaryVelocity! > 0) {
      skipToPrevious();
    }
  }
}
