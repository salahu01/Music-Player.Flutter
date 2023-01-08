// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:music_app/imports_bindings.dart';

@immutable
class IconTitleModel {
  final IconData icon;
  final String label;
  const IconTitleModel({
    required this.icon,
    required this.label,
  });

  IconTitleModel copyWith({
    IconData? icon,
    String? title,
    void Function()? onTap,
  }) {
    return IconTitleModel(
      icon: icon ?? this.icon,
      label: title ?? label,
    );
  }

  @override
  String toString() => 'OfflineSongModel(icon: $icon, title: $label)';

  @override
  bool operator ==(covariant IconTitleModel other) {
    if (identical(this, other)) return true;

    return other.icon == icon && other.label == label;
  }

  @override
  int get hashCode => icon.hashCode ^ label.hashCode;
}
