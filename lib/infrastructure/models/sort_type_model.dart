import 'package:music_app/imports_bindings.dart';

@immutable
class SortTypeModel {
  final String label;
  final IconData icon;
  final SongSortType sortType;
  const SortTypeModel({
    required this.label,
    required this.icon,
    required this.sortType,
  });

  SortTypeModel copyWith({
    String? label,
    IconData? icon,
    SongSortType? sortType,
  }) {
    return SortTypeModel(
      label: label ?? this.label,
      icon: icon ?? this.icon,
      sortType: sortType ?? this.sortType,
    );
  }

  @override
  String toString() => 'SortTypeModel(label: $label, icon: $icon, sortType: $sortType)';

  @override
  bool operator ==(covariant SortTypeModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.label == label &&
      other.icon == icon &&
      other.sortType == sortType;
  }

  @override
  int get hashCode => label.hashCode ^ icon.hashCode ^ sortType.hashCode;
}
