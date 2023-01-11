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
              : SingleArtistModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopArtistsEntityToJson(TopArtistsEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'title': instance.title,
      'id': instance.id,
      'artists': instance.artists,
    };

SingleArtistModel _$SingleArtistModelFromJson(Map<String, dynamic> json) =>
    SingleArtistModel(
      artistName: json['name'] as String?,
      artistId: json['id'] as String?,
      avatar: json['visuals'] == null
          ? null
          : Avatar.fromJson(json['visuals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SingleArtistModelToJson(SingleArtistModel instance) =>
    <String, dynamic>{
      'name': instance.artistName,
      'id': instance.artistId,
      'visuals': instance.avatar,
    };

Avatar _$AvatarFromJson(Map<String, dynamic> json) => Avatar(
      img: json['url'] as String?,
    );

Map<String, dynamic> _$AvatarToJson(Avatar instance) => <String, dynamic>{
      'url': instance.img,
    };
