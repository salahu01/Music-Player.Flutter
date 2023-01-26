import 'package:music_app/imports_bindings.dart';

class SettingsController extends GetxController {
  //* This variable for store current themeMode (purpose : controlling app theme)
  Rx<ThemeMode?> selectedTheme = Rx(AppSettingsStorage().retriveTheme());

  //* This variable for store current themeMode (purpose : controlling app theme)
  Rx<String> selectedLanguage = Rx(AppSettingsStorage().retriveLanguage());

  //* This variable
  final _appSettingsStorage = AppSettingsStorage();

  //* This methord for change theme when user change
  void changeTheme(ThemeMode? themeMode) {
    _appSettingsStorage.storeTheme(themeMode ?? ThemeMode.system).then((_) {
      selectedTheme.value = themeMode ?? selectedTheme.value;
      Get.changeThemeMode(themeMode ?? ThemeMode.system);
    });
  }

  //* his methord for change language when user change
  void changeLanguage(String? language) {
    _appSettingsStorage.storeLanguage(language ?? 'enUS').then((value) {
      Get.updateLocale(Locale(language ?? 'enUS'));
      selectedLanguage.value = language ?? 'enUS';
    });
  }
}
