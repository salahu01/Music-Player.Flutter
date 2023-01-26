import 'package:music_app/imports_bindings.dart';

class SessionSource {
  //* This constructor body for creating singleton widget
  factory SessionSource() {
    _appSettingsStorage == null ? {_appSettingsStorage = SessionSource._internel()} : null;
    return _appSettingsStorage!;
  }

  //* This named constructor for create object for this class
  SessionSource._internel();

  //* This variable for store this class object globally
  static SessionSource? _appSettingsStorage;

  //* This variable for store app settings storage box from HIVE
  late Box<String> _appSession;

  //* This methord for open bix when open our appliction
  Future<void> openBox() async {
    _appSession = await Hive.openBox<String>(StorageKeys.appSessionKey);
  }

  //* This methord for store app current user credentials
  Future<void> storeSession(String userName) async {
    try {
      await _appSession.putAt(0, userName);
    } catch (e) {
      await _appSession.add(userName);
    }
  }

  //* This methord for get stored current user credentials
  String retriveSession() {
    try {
      return _appSession.getAt(0) ?? '';
    } catch (e) {
      return '';
    }
  }
}
