// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:music_app/imports_bindings.dart';

@immutable
class AudioTimeModel {
  final Duration total;
  final Duration buffred;
  final Duration position; 
  const AudioTimeModel({
    required this.total,
    required this.buffred,
    required this.position,
  });

  @override
  String toString() => 'DuartionModel(total: $total, buffred: $buffred, current: $position)';

  @override
  bool operator ==(covariant AudioTimeModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.total == total &&
      other.buffred == buffred &&
      other.position == position;
  }

  @override
  int get hashCode => total.hashCode ^ buffred.hashCode ^ position.hashCode;

  AudioTimeModel copyWith({
    Duration? total,
    Duration? buffred,
    Duration? current,
  }) {
    return AudioTimeModel(
      total: total ?? this.total,
      buffred: buffred ?? this.buffred,
      position: current ?? this.position,
    );
  }
}
