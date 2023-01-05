import 'package:music_app/imports_bindings.dart';

class PlayerController extends GetxController {
  //*The onInit() is a method that is called when an object for OfflineController is created and inserted inside the widget tree
  @override
  void onInit() {
    _playerServices = PlayerServices();
    selectedSong.value = _playerServices.playingSongModel.value;
    changeCurrentSong();
    super.onInit();
  }

  //* This variable using to store player services object ( for creating instance of PlayerServices classes instance )
  late PlayerServices _playerServices;

  //*This Variable using to store current playing Or current Selected song creadential Or Datas
  Rx<SongModel?> selectedSong = Rx(null);

  //*This Variable using to store current audio time
  Rx<AudioTimeModel?> progressBarTime = Rx(null); 

  //* This methord using change player screen when changing the current song
  void changeCurrentSong() {
    _playerServices.playingSongModel.addListener(() {
      selectedSong.value = _playerServices.playingSongModel.value;
    });
  }

  void changeProgressBarTime(){
    _playerServices.player.duration.listen((time) {
      progressBarTime.value = AudioTimeModel(total: time., buffred: buffred, current: current)
     });
  }

}
