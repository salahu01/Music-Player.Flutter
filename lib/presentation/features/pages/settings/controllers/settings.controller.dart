import 'package:music_app/imports_bindings.dart';

class SettingsController extends GetxController {
  //* This variable for store current themeMode (purpose : controlling app theme)
  Rx<ThemeMode> selectedTheme = Rx<ThemeMode>(ThemeMode.dark);

  //* This variable for store current themeMode (purpose : controlling app theme)
  Rx<String> selectedLanguage = Rx(Get.locale?.languageCode ?? 'enUS');

  //* This methord for change theme when user change
  void changeTheme(ThemeMode? themeMode) {
    selectedTheme.value = themeMode ?? selectedTheme.value;
  }

  //* his methord for change language when user change
  void changeLanguage(String? language) {
    Get.updateLocale(Locale(language ?? 'enUS'));
    selectedLanguage.value = language ?? 'enUS';
  }
}
