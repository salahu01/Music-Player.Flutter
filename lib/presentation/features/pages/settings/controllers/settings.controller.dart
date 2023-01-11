import 'package:music_app/imports_bindings.dart';

class SettingsController extends GetxController {
  //* This variable for store current themeMode (purpose : controlling app theme)
  Rx<ThemeMode> selectedTheme = Rx<ThemeMode>(ThemeMode.dark);

  //* This methord for change theme when user change theme
  void changeTheme(ThemeMode? themeMode) {
    selectedTheme.value = themeMode ?? selectedTheme.value;
  }
}
