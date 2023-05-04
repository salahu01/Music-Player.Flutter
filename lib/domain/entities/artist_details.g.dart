// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistDetailsEntity _$ArtistDetailsEntityFromJson(Map<String, dynamic> json) =>
    ArtistDetailsEntity(
      id: json['id'] as String?,
      name: json['name'] as String?,
      shareUrl: json['shareUrl'] as String?,
      verified: json['verified'] as bool?,
      biography: json['biography'] as String?,
      stats: json['stats'] == null
          ? null
          : Stats.fromJson(json['stats'] as Map<String, dynamic>),
      visuals: json['visuals'] == null
          ? null
          : Visuals.fromJson(json['visuals'] as Map<String, dynamic>),
      playlists: json['playlists'] == null
          ? null
          : Playlists.fromJson(json['playlists'] as Map<String, dynamic>),
      discography: json['discography'] == null
          ? null
          : Discography.fromJson(json['discography'] as Map<String, dynamic>),
    );

Stats _$StatsFromJson(Map<String, dynamic> json) => Stats(
      followers: json['followers'] as int?,
      monthlyListeners: json['monthlyListeners'] as int?,
      worldRank: json['worldRank'] as int?,
    );

Visuals _$VisualsFromJson(Map<String, dynamic> json) => Visuals(
      avatar: (json['avatar'] as List<dynamic>?)
          ?.map((e) => Avatar.fromJson(e as Map<String, dynamic>))
          .toList(),
      gallery: (json['gallery'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>)
              .map((e) => Avatar.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
    )..header = (json['header'] as List<dynamic>?)
        ?.map((e) => Avatar.fromJson(e as Map<String, dynamic>))
        .toList();

Avatar _$AvatarFromJson(Map<String, dynamic> json) => Avatar(
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Playlists _$PlaylistsFromJson(Map<String, dynamic> json) => Playlists(
      totalCount: json['totalCount'] as int?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      type: json['type'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      shareUrl: json['shareUrl'] as String?,
      description: json['description'] as String?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => e as List<dynamic>)
          .toList(),
    );

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      type: json['type'] as String?,
      name: json['name'] as String?,
    );

Discography _$DiscographyFromJson(Map<String, dynamic> json) => Discography(
      latest: json['latest'] == null
          ? null
          : Latest.fromJson(json['latest'] as Map<String, dynamic>),
      singles: json['singles'] == null
          ? null
          : Playlists.fromJson(json['singles'] as Map<String, dynamic>),
      albums: json['albums'] == null
          ? null
          : Playlists.fromJson(json['albums'] as Map<String, dynamic>),
      topTracks: (json['topTracks'] as List<dynamic>?)
          ?.map((e) => TopTracks.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Latest _$LatestFromJson(Map<String, dynamic> json) => Latest(
      type: json['type'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      shareUrl: json['shareUrl'] as String?,
      label: json['label'] as String?,
      copyright: (json['copyright'] as List<dynamic>?)
          ?.map((e) => Copyright.fromJson(e as Map<String, dynamic>))
          .toList(),
      cover: (json['cover'] as List<dynamic>?)
          ?.map((e) => Cover.fromJson(e as Map<String, dynamic>))
          .toList(),
      trackCount: json['trackCount'] as int?,
    );

Copyright _$CopyrightFromJson(Map<String, dynamic> json) => Copyright(
      type: json['type'] as String?,
      text: json['text'] as String?,
    );

TopTracks _$TopTracksFromJson(Map<String, dynamic> json) => TopTracks(
      type: json['type'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      shareUrl: json['shareUrl'] as String?,
      durationMs: json['durationMs'] as int?,
      durationText: json['durationText'] as String?,
      discNumber: json['discNumber'] as int?,
      playCount: json['playCount'] as int?,
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artists.fromJson(e as Map<String, dynamic>))
          .toList(),
      album: json['album'] == null
          ? null
          : Album.fromJson(json['album'] as Map<String, dynamic>),
    );

Artists _$ArtistsFromJson(Map<String, dynamic> json) => Artists(
      type: json['type'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      shareUrl: json['shareUrl'] as String?,
    );

Album _$AlbumFromJson(Map<String, dynamic> json) => Album(
      type: json['type'] as String?,
      id: json['id'] as String?,
      shareUrl: json['shareUrl'] as String?,
      cover: (json['cover'] as List<dynamic>?)
          ?.map((e) => Cover.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Cover _$CoverFromJson(Map<String, dynamic> json) => Cover(
      url: json['url'] as String?,
    );
