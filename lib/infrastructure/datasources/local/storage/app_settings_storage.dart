import 'package:music_app/imports_bindings.dart';

class AppSettingsStorage {
  //* This constructor body for creating singleton widget
  factory AppSettingsStorage() {
    _appSettingsStorage == null ? {_appSettingsStorage = AppSettingsStorage._internel()} : null;
    return _appSettingsStorage!;
  }

  //* This named constructor for create object for this class
  AppSettingsStorage._internel();

  //* This variable for store this class object globally
  static AppSettingsStorage? _appSettingsStorage;

  //* This variable for store app settings storage box from HIVE
  late Box<dynamic> _appSettings;

  //* This methord for open bix when open our appliction
  Future<void> openBox() async {
    _appSettings = await Hive.openBox<dynamic>(StorageKeys.appSettingsKey);
  }

  //* This methord for store app current theme prefence
  Future<void> storeTheme(ThemeMode mode) async {
    var theme = mode == ThemeMode.dark ? 'dark' : ThemeMode.light == mode ? 'light' : 'system';
    try {
      await _appSettings.putAt(0, theme);
    } catch (e) {
      await _appSettings.add(theme);
    }
  }

  //* This methord for get stored current theme
  ThemeMode retriveTheme() {
    late String theme;
    try {
      theme = (_appSettings.getAt(0) as String?) ?? 'system';
    } catch (e) {
      theme = 'system';
    }
    return theme == 'dark'? ThemeMode.dark : theme == 'light' ? ThemeMode.light : ThemeMode.system;
  }

  //* This methord for store app current theme prefence
  Future<void> storeLanguage(String lang) async {
    try {
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
