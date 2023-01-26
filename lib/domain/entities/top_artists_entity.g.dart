// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_artists_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopArtistsEntity _$TopArtistsEntityFromJson(Map<String, dynamic> json) =>
    TopArtistsEntity(
      status: json['status'] as bool?,
      title: json['title'] as String?,
      id: json['id'] as String?,
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SingleArtistEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopArtistsEntityToJson(TopArtistsEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'title': instance.title,
      'id': instance.id,
      'artists': instance.artists,
    };

SingleArtistEntity _$SingleArtistEntityFromJson(Map<String, dynamic> json) =>
    SingleArtistEntity(
      artistName: json['name'] as String?,
      artistId: json['id'] as String?,
      visuals: json['visuals'] == null
          ? null
          : Visuals.fromJson(json['visuals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SingleArtistEntityToJson(SingleArtistEntity instance) =>
    <String, dynamic>{
      'name': instance.artistName,
      'id': instance.artistId,
      'visuals': instance.visuals,
    };

Visuals _$VisualsFromJson(Map<String, dynamic> json) => Visuals(
      (json['avatar'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Avatar.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VisualsToJson(Visuals instance) => <String, dynamic>{
      'avatar': instance.avatar,
    };

Avatar _$AvatarFromJson(Map<String, dynamic> json) => Avatar(
      img: json['url'] as String?,
    );

Map<String, dynamic> _$AvatarToJson(Avatar instance) => <String, dynamic>{
      'url': instance.img,
    };
