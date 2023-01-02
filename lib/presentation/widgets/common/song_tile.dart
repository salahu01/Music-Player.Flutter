import 'package:music_app/imports_bindings.dart';

class SongTile extends StatelessWidget {
  SongTile({
    super.key,
    required index,
    required selectedIndex,
    required this.songModel,
  }) {
    isSelected = index == selectedIndex;
  }
  late final bool isSelected;
  final SongModel songModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: isSelected ? context.theme.colorScheme.primary : AppColors.transparent,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: Image.asset(
          isSelected
              ? context.isDarkMode
                  ? AssetHelper.darkIcon
                  : AssetHelper.lightIcon
              : appIcon,
          height: 35.h,
        ),
      ),
      trailing: isSelected
          ? IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.pause,
                color: context.theme.colorScheme.background,
              ))
          : null,
      title: Text(
        songModel.title,
        style: context.textTheme.headline2!.copyWith(color: isSelected ? context.theme.colorScheme.background : context.theme.colorScheme.primary, overflow: TextOverflow.ellipsis),
        maxLines: 1,
      ),
      subtitle: Text(songModel.artist ?? 'unknown', style: context.textTheme.headline2!.copyWith(color: isSelected ? context.theme.colorScheme.background : context.theme.colorScheme.primary)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
    ).paddingSymmetric(horizontal: 16.r);
  }
}
