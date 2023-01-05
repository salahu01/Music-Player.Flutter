// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:music_app/imports_bindings.dart';

@immutable
class AudioTimeModel {
  final num total;
  final num buffred;
  final num current; 
  const AudioTimeModel({
    required this.total,
    required this.buffred,
    required this.current,
  });

  @override
  String toString() => 'DuartionModel(total: $total, buffred: $buffred, current: $current)';

  @override
  bool operator ==(covariant AudioTimeModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.total == total &&
      other.buffred == buffred &&
      other.current == current;
  }

  @override
  int get hashCode => total.hashCode ^ buffred.hashCode ^ current.hashCode;
}
