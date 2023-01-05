import 'package:music_app/imports_bindings.dart';

class PlayerServices {
  //* This constructor body for creating singleton widget
  factory PlayerServices() {
    _playerServices == null ? {_playerServices = PlayerServices._internel()} : null;
    return _playerServices!;
  }

  //* This named constructor for create object for this class
  PlayerServices._internel();

  //* This variable for store this class object globally
  static PlayerServices? _playerServices;
  //* This variable using to play our musics and controll our player
  final _player = AudioPlayer();
  //* This geter for access **** AudioPLayer instance *** for controller song
  AudioPlayer get player => _player;
  //* This varible using to PlayList of songs ( create a playlist )
  ConcatenatingAudioSource? _playlist;
  //* This variable for store current selected song
  ValueNotifier<SongModel?> playingSongModel = ValueNotifier(null);

  //* This methord using play a song
  Future<void> play({required List<SongModel> songModels, required int index}) async {
    createSongPlayList(songModels: songModels);
    await _player.setAudioSource(_playlist!, initialIndex: index);
    _player.play();
    _player.currentIndexStream.listen((index) {
      if (index != null) {
        playingSongModel.value = songModels[index];
      }
    });
  }

  //* This methord using play next song
  void nextPlay() {
    _player.seekToNext();
  }

  //* This methord using play previous song
  void previousPlay() {
    _player.seekToPrevious();
  }

  //* This methord using pause and play current playing song
  void pauseOrPlay() {
    _player.playing ? _player.pause() : _player.play();
  }

  //* This methord using shuffle current play list songs
  void shuffle() {
    _player.shuffleModeEnabled ? _player.setShuffleModeEnabled(false) : _player.setShuffleModeEnabled(true);
  }

  //* This methord using for looping current playing song
  void loopMode() {
    _player.loopMode == LoopMode.all
        ? _player.setLoopMode(LoopMode.off)
        : _player.loopMode == LoopMode.off
            ? _player.setLoopMode(LoopMode.one)
            : _player.setLoopMode(LoopMode.all);
  }

  //* This methord using to adjust speed current playing song
  void setSpeed({required double speed}) {
    //! max 2 min 0.1
    _player.setSpeed(speed);
  }

  //* This methord using to adjust volume
  void setVolume({required double volume}) {
    //! max 2 min 0
    _player.setVolume(volume);
  }

  //* This methord using for change current playing song position
  void changePosition({required Duration position}) {
    _player.seek(position);
  }

  //* This methord using create playlist
  void createSongPlayList({required List<SongModel> songModels}) {
    _playlist = ConcatenatingAudioSource(
      useLazyPreparation: true,
      shuffleOrder: DefaultShuffleOrder(),
      children: songModels.map((e) => AudioSource.uri(Uri.parse(e.uri!), tag: MediaItem(id: e.id.toString(), album: e.artist ?? 'Unknown', title: e.title))).toList(),
    );
  }
}
