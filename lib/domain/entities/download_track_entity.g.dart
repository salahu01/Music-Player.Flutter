// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_track_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadTrackEntity _$TrackDownloadEntityFromJson(Map<String, dynamic> json) => DownloadTrackEntity(
      status: json['status'] as bool?,
      youtubeVideo: json['youtubeVideo'] == null ? null : YoutubeVideo.fromJson(json['youtubeVideo'] as Map<String, dynamic>),
      spotifyTrack: json['spotifyTrack'] == null ? null : SpotifyTrack.fromJson(json['spotifyTrack'] as Map<String, dynamic>),
    );

SpotifyTrack _$SpotifyTrackFromJson(Map<String, dynamic> json) => SpotifyTrack(
      type: json['type'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      shareUrl: json['shareUrl'] as String?,
      durationMs: json['durationMs'] as int?,
      durationText: json['durationText'] as String?,
      artists: (json['artists'] as List<dynamic>?)?.map((e) => Album.fromJson(e as Map<String, dynamic>)).toList(),
      album: json['album'] == null ? null : Album.fromJson(json['album'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpotifyTrackToJson(SpotifyTrack instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'name': instance.name,
      'shareUrl': instance.shareUrl,
      'durationMs': instance.durationMs,
      'durationText': instance.durationText,
      'artists': instance.artists,
      'album': instance.album,
    };

Album _$AlbumFromJson(Map<String, dynamic> json) => Album(
      type: json['type'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      shareUrl: json['shareUrl'] as String?,
      cover: (json['cover'] as List<dynamic>?)?.map((e) => Cover.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$AlbumToJson(Album instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'name': instance.name,
      'shareUrl': instance.shareUrl,
      'cover': instance.cover,
    };

Cover _$CoverFromJson(Map<String, dynamic> json) => Cover(
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$CoverToJson(Cover instance) => <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };

YoutubeVideo _$YoutubeVideoFromJson(Map<String, dynamic> json) => YoutubeVideo(
      searchTerm: json['searchTerm'] as String?,
      id: json['id'] as String?,
      title: json['title'] as String?,
      channel: json['channel'] == null ? null : Channel.fromJson(json['channel'] as Map<String, dynamic>),
      audio: (json['audio'] as List<dynamic>?)?.map((e) => Audio.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$YoutubeVideoToJson(YoutubeVideo instance) => <String, dynamic>{
      'searchTerm': instance.searchTerm,
      'id': instance.id,
      'title': instance.title,
      'channel': instance.channel,
      'audio': instance.audio,
    };

Audio _$AudioFromJson(Map<String, dynamic> json) => Audio(
      url: json['url'] as String?,
      durationMs: json['durationMs'] as int?,
      durationText: json['durationText'] as String?,
      mimeType: json['mimeType'] as String?,
      format: json['format'] as String?,
      lastModified: json['lastModified'] as int?,
      size: json['size'] as int?,
      sizeText: json['sizeText'] as String?,
    );

Map<String, dynamic> _$AudioToJson(Audio instance) => <String, dynamic>{
      'url': instance.url,
      'durationMs': instance.durationMs,
      'durationText': instance.durationText,
      'mimeType': instance.mimeType,
      'format': instance.format,
      'lastModified': instance.lastModified,
      'size': instance.size,
      'sizeText': instance.sizeText,
    };

Channel _$ChannelFromJson(Map<String, dynamic> json) => Channel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      isVerified: json['isVerified'] as bool?,
      isVerifiedArtist: json['isVerifiedArtist'] as bool?,
    );

Map<String, dynamic> _$ChannelToJson(Channel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isVerified': instance.isVerified,
      'isVerifiedArtist': instance.isVerifiedArtist,
    };
