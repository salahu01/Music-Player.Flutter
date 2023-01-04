// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:music_app/imports_bindings.dart';

@immutable
class SortOrderModel {
  final String label;
  final IconData icon;
  final bool isNormal;
  const SortOrderModel({
    required this.isNormal,
    required this.label,
    required this.icon,
  });

  @override
  String toString() => 'SortOrderModel(label: $label, icon: $icon, isNormal: $isNormal)';

  @override
  bool operator ==(covariant SortOrderModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.label == label &&
      other.icon == icon &&
      other.isNormal == isNormal;
  }

  @override
  int get hashCode => label.hashCode ^ icon.hashCode ^ isNormal.hashCode;
}
