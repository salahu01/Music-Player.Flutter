class PlayListModel {
  final String title;
  final List playListIds;
  PlayListModel({
    required this.title,
    required this.playListIds,
  });

  factory PlayListModel.fromMap(Map<dynamic, dynamic> map) {
    return PlayListModel(title: map['playlist_name'] as String, playListIds: map['ids']);
  }
}
