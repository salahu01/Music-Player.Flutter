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

SingleArtistModel _$SingleArtistModelFromJson(Map<String, dynamic> json) =>
    SingleArtistModel(
      artistName: json['name'] as String?,
      artistId: json['id'] as String?,
    )..visuals = json['visuals'] == null
        ? null
        : Visuals.fromJson(json['visuals'] as Map<String, dynamic>);

Visuals _$VisualsFromJson(Map<String, dynamic> json) => Visuals(
      (json['avatar'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Avatar.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Avatar _$AvatarFromJson(Map<String, dynamic> json) => Avatar(
      img: json['url'] as String?,
    );