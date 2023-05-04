import 'package:music_app/imports_bindings.dart';
part 'download_track_entity.g.dart';

@JsonSerializable()
class DownloadTrackEntity {
  bool? status;
  YoutubeVideo? youtubeVideo;
  SpotifyTrack? spotifyTrack;

  DownloadTrackEntity({
    this.status,
    this.youtubeVideo,
    this.spotifyTrack,
  });

  factory DownloadTrackEntity.fromJson(Map<String, dynamic> json) => _$TrackDownloadEntityFromJson(json);
}

@JsonSerializable()
class SpotifyTrack {
  String? type;
  String? id;
  String? name;
  String? shareUrl;
  int? durationMs;
  String? durationText;
  List<Album>? artists;
  Album? album;

  SpotifyTrack({
    this.type,
    this.id,
    this.name,
    this.shareUrl,
    this.durationMs,
    this.durationText,
    this.artists,
    this.album,
  });
  factory SpotifyTrack.fromJson(Map<String, dynamic> json) => _$SpotifyTrackFromJson(json);
}

@JsonSerializable()
class Album {
  String? type;
  String? id;
  String? name;
  String? shareUrl;
  List<Cover>? cover;

  Album({
    this.type,
    this.id,
    this.name,
    this.shareUrl,
    this.cover,
  });

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@JsonSerializable()
class Cover {
  String? url;
  int? width;
  int? height;

  Cover({
    this.url,
    this.width,
    this.height,
  });
  factory Cover.fromJson(Map<String, dynamic> json) => _$CoverFromJson(json);
}

@JsonSerializable()
class YoutubeVideo {
  String? searchTerm;
  String? id;
  String? title;
  Channel? channel;
  List<Audio>? audio;

  YoutubeVideo({
    this.searchTerm,
    this.id,
    this.title,
    this.channel,
    this.audio,
  });

  factory YoutubeVideo.fromJson(Map<String, dynamic> json) => _$YoutubeVideoFromJson(json);
}

@JsonSerializable()
class Audio {
  String? url;
  int? durationMs;
  String? durationText;
  String? mimeType;
  String? format;
  int? lastModified;
  int? size;
  String? sizeText;

  Audio({
    this.url,
    this.durationMs,
    this.durationText,
    this.mimeType,
    this.format,
    this.lastModified,
    this.size,
    this.sizeText,
  });
  factory Audio.fromJson(Map<String, dynamic> json) => _$AudioFromJson(json);
}

@JsonSerializable()
class Channel {
  String? id;
  String? name;
  bool? isVerified;
  bool? isVerifiedArtist;

  Channel({
    this.id,
    this.name,
    this.isVerified,
    this.isVerifiedArtist,
  });
  factory Channel.fromJson(Map<String, dynamic> json) => _$ChannelFromJson(json);
}
