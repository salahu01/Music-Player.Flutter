// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:music_app/imports_bindings.dart';

@immutable
class ThemeModeModel {
  final ThemeMode themeMode;
  final String label;
  const ThemeModeModel({
    required this.themeMode,
    required this.label,
  });

  @override
  String toString() => 'ThemeModeModel(themeMode: $themeMode, label: $label)';

  @override
  bool operator ==(covariant ThemeModeModel other) {
    if (identical(this, other)) return true;

    return other.themeMode == themeMode && other.label == label;
  }

  @override
  int get hashCode => themeMode.hashCode ^ label.hashCode;

  ThemeModeModel copyWith({
    ThemeMode? themeMode,
    String? label,
  }) {
    return ThemeModeModel(
      themeMode: themeMode ?? this.themeMode,
      label: label ?? this.label,
    );
  }
}
