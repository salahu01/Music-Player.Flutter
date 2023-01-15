class PlayListModel {
  final List<SinglePlayListModel> playList;
  PlayListModel({required this.playList});

  factory PlayListModel.fromMap(List<Map<dynamic, dynamic>> playLists) {
    return PlayListModel(playList: playLists.map((e) => SinglePlayListModel.fromMap(e)).toList());
  }
}

class SinglePlayListModel {
  final String title;
  final List<num> playListIds;
  SinglePlayListModel({
    required this.title,
    required this.playListIds,
  });

  factory SinglePlayListModel.fromMap(Map<dynamic, dynamic> map) {
    return SinglePlayListModel(title: map['playlist_name'] as String, playListIds: map['ids'] as List<num>);
  }
}
