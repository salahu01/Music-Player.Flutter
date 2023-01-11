// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:music_app/imports_bindings.dart';

@immutable
class SongDeatilsModel {
  final String label;
  final String value;
  const SongDeatilsModel({
    required this.label,
    required this.value,
  });

  @override
  String toString() => 'SongDeatilsModel(label: $label, value: $value)';

  @override
  bool operator ==(covariant SongDeatilsModel other) {
    if (identical(this, other)) return true;

    return other.label == label && other.value == value;
  }

  @override
  int get hashCode => label.hashCode ^ value.hashCode;

  SongDeatilsModel copyWith({
    String? label,
    String? value,
  }) {
    return SongDeatilsModel(
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }
}
