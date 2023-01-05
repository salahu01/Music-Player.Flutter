// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:music_app/imports_bindings.dart';

@immutable
class OfflineOtherModel {
  final void Function() onTap;
  final String otherName;
  const OfflineOtherModel({
    required this.onTap,
    required this.otherName,
  });

  @override
  String toString() => 'OfflineOtherModel(onTap: $onTap, name: $otherName)';

  @override
  bool operator ==(covariant OfflineOtherModel other) {
    if (identical(this, other)) return true;

    return other.onTap == onTap && other.otherName == otherName;
  }

  @override
  int get hashCode => onTap.hashCode ^ otherName.hashCode;
}
