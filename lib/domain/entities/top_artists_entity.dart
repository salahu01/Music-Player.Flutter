// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:music_app/imports_bindings.dart';

part 'top_artists_entity.g.dart';

@JsonSerializable()
class TopArtistsEntity {
  final bool? status;
  final String? title;
  final String? id;
  final List<SingleArtistModel?>? artists;
  TopArtistsEntity({this.status, this.title, this.id, this.artists});

  factory TopArtistsEntity.fromJson(Map<String, dynamic> json) => _$TopArtistsEntityFromJson(json);
}

@JsonSerializable()
class SingleArtistModel {
  @JsonKey(name: 'name')
  String? artistName;
  @JsonKey(name: 'id')
  String? artistId;
  @JsonKey(name: 'visuals')
  Visuals? visuals;
  SingleArtistModel({this.artistName, this.artistId, this.visuals});
  factory SingleArtistModel.fromJson(Map<String, dynamic> json) => _$SingleArtistModelFromJson(json);
}

@JsonSerializable()
class Visuals {
  Visuals(this.avatar);
  List<Avatar?>? avatar;
  factory Visuals.fromJson(Map<String, dynamic> json) => _$VisualsFromJson(json);
}

@JsonSerializable()
class Avatar {
  @JsonKey(name: 'url')
  String? img;
  Avatar({this.img});
  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);
}
