import 'package:music_app/imports_bindings.dart';
part 'artist_details.g.dart';

@JsonSerializable()
class ArtistDetailsEntity {
  String? id;
  String? name;
  String? shareUrl;
  bool? verified;
  String? biography;
  Stats? stats;
  Visuals? visuals;
  Playlists? playlists;
  Discography? discography;
  ArtistDetailsEntity({this.id, this.name, this.shareUrl, this.verified, this.biography, this.stats, this.visuals, this.playlists, this.discography});

  factory ArtistDetailsEntity.fromJson(Map<String, dynamic> json) => _$ArtistDetailsEntityFromJson(json);
}

@JsonSerializable()
class Stats {
  int? followers;
  int? monthlyListeners;
  int? worldRank;
  Stats({this.followers, this.monthlyListeners, this.worldRank});

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
}

@JsonSerializable()
class Visuals {
  List<Avatar>? avatar;
  List<List>? gallery;

  Visuals({this.avatar, this.gallery});

  factory Visuals.fromJson(Map<String, dynamic> json) => _$VisualsFromJson(json);
}

@JsonSerializable()
class Avatar {
  String? url;
  int? width;
  int? height;

  Avatar({this.url, this.width, this.height});
  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);
}

@JsonSerializable()
class Playlists {
  int? totalCount;
  List<Items>? items;

  Playlists({this.totalCount, this.items});

  factory Playlists.fromJson(Map<String, dynamic> json) => _$PlaylistsFromJson(json);
}

@JsonSerializable()
class Items {
  String? type;
  String? id;
  String? name;
  String? shareUrl;
  String? description;
  Owner? owner;
  List<List>? images;

  Items({this.type, this.id, this.name, this.shareUrl, this.description, this.owner, this.images});
  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}

@JsonSerializable()
class Owner {
  String? type;
  String? name;

  Owner({this.type, this.name});

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

@JsonSerializable()
class Discography {
  Latest? latest;
  Playlists? singles;
  Playlists? albums;
  List<TopTracks>? topTracks;

  Discography({this.latest, this.singles, this.albums, this.topTracks});

  factory Discography.fromJson(Map<String, dynamic> json) => _$DiscographyFromJson(json);
}

@JsonSerializable()
class Latest {
  String? type;
  String? id;
  String? name;
  String? shareUrl;
  String? label;
  List<Copyright>? copyright;
  List<Cover>? cover;
  int? trackCount;

  Latest({this.type, this.id, this.name, this.shareUrl, this.label, this.copyright, this.cover, this.trackCount});
  factory Latest.fromJson(Map<String, dynamic> json) => _$LatestFromJson(json);
}

@JsonSerializable()
class Copyright {
  String? type;
  String? text;

  Copyright({this.type, this.text});

  factory Copyright.fromJson(Map<String, dynamic> json) => _$CopyrightFromJson(json);
}

@JsonSerializable()
class TopTracks {
  String? type;
  String? id;
  String? name;
  String? shareUrl;
  int? durationMs;
  String? durationText;
  int? discNumber;
  int? playCount;
  List<Artists>? artists;
  Album? album;

  TopTracks({this.type, this.id, this.name, this.shareUrl, this.durationMs, this.durationText, this.discNumber, this.playCount, this.artists, this.album});

  factory TopTracks.fromJson(Map<String, dynamic> json) => _$TopTracksFromJson(json);
}

@JsonSerializable()
class Artists {
  String? type;
  String? id;
  String? name;
  String? shareUrl;

  Artists({this.type, this.id, this.name, this.shareUrl});
  factory Artists.fromJson(Map<String, dynamic> json) => _$ArtistsFromJson(json);
}

@JsonSerializable()
class Album {
  String? type;
  String? id;
  String? shareUrl;
  List<Cover>? cover;
  Album({this.type, this.id, this.shareUrl, this.cover});
  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@JsonSerializable()
class Cover {
  String? url;
  Cover({this.url});
  factory Cover.fromJson(Map<String, dynamic> json) => _$CoverFromJson(json);
}
