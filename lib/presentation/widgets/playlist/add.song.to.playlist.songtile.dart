import 'package:music_app/imports_bindings.dart';

class AddSongToPlayListTile extends StatelessWidget {
  const AddSongToPlayListTile({
    super.key,
    required this.songModel,
    required this.isAdded,
    required this.selectedIds,
  });
  final ValueNotifier<bool> isAdded;
  final SongModel songModel;
  final List<num> selectedIds;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: AppColors.transparent,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: FutureBuilder(
          future: OnAudioQuery.platform.queryArtwork(songModel.id, ArtworkType.AUDIO),
          builder: (context, snapshot) {
            if (snapshot.data == null || (snapshot.data?.isEmpty ?? false)) {
              return Image.asset(appIcon, height: 35.h);
            } else {
              return Image.memory(snapshot.data!, height: 35.h, width: 35.h, fit: BoxFit.cover);
            }
          },
        ),
      ),
      trailing: ValueListenableBuilder(
        valueListenable: isAdded,
        builder: (context, added, _) => IconButton(
          onPressed: () => {isAdded.value = added ? false : true, added ? selectedIds.remove(songModel.id) : selectedIds.add(songModel.id)},
          icon: Icon(!added ? Icons.add_circle : Icons.remove_circle),
        ),
      ),
      title: Text(
        songModel.title,
        style: context.textTheme.headline2!.copyWith(color: context.theme.colorScheme.primary, overflow: TextOverflow.ellipsis),
        maxLines: 1,
      ),
      subtitle: Text(
        songModel.artist ?? 'unknown',
        style: context.textTheme.headline2!.copyWith(color: context.theme.colorScheme.primary, overflow: TextOverflow.ellipsis),
        maxLines: 1,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
    ).paddingSymmetric(horizontal: 16.r);
  }
}
