import 'package:music_app/imports_bindings.dart';

class AppSettingsStorage {
  //* This constructor body for creating singleton widget
  factory AppSettingsStorage() {
    _appSettingsStorage == null ? {_appSettingsStorage = AppSettingsStorage._internel()} : null;
    return _appSettingsStorage!;
  }

  //* This named constructor for create object for this class
  AppSettingsStorage._internel() {
    Hive.openBox<dynamic>(StorageKeys.appSettingsKey).then((_) => _appSettings = _);
  }

  //* This variable for store this class object globally
  static AppSettingsStorage? _appSettingsStorage;

  //* This variable for store app settings storage box from HIVE
  late Box<dynamic> _appSettings;

  //* This methord for store app current theme prefence
  Future<void> storeTheme(ThemeMode mode) async {
    try {
      _appSettings.getAt(0);
      await _appSettings.putAt(0, mode);
    } catch (e) {
      await _appSettings.add(mode);
    }
  }

  //* This methord for get stored current theme
  ThemeMode retriveTheme() {
    try {
      return (_appSettings.getAt(0) as ThemeMode?) ?? ThemeMode.system;
    } catch (e) {
      return ThemeMode.system;
    }
  }

  //* This methord for store app current theme prefence
  Future<void> storeLanguage(String lang) async {
    try {
      _appSettings.getAt(1);
      await _appSettings.putAt(1, lang);
    } catch (e) {
      await _appSettings.add(lang);
    }
  }

  //* This methord for get stored language
  String retriveLanguage() {
    try {
      return (_appSettings.getAt(1) as String?) ?? 'enUS';
    } catch (e) {
      return 'enUS';
    }
  }
}
