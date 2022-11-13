import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_app/infrastructure/helper/asset_helper.dart';
import 'package:music_app/infrastructure/theme/app_colors.dart';

class SongTile extends StatelessWidget {
  SongTile({Key? key, required this.index, required selectedIndex})
      : super(key: key) {
    isSelected = index == selectedIndex;
  }
  final int index;
  late final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: isSelected
          ? context.theme.colorScheme.primary
          : AppColors.transparent,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: Image.asset(
          isSelected
              ? context.isDarkMode
                  ? AssetHelper.darkIcon
                  : AssetHelper.lightIcon
              : context.isDarkMode
                  ? AssetHelper.lightIcon
                  : AssetHelper.darkIcon,
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
      title: Text('Hey salahu',
          style: context.textTheme.headline2!.copyWith(
              color: isSelected
                  ? context.theme.colorScheme.background
                  : context.theme.colorScheme.primary)),
      subtitle: Text('Hey salahu',
          style: context.textTheme.headline2!.copyWith(
              color: isSelected
                  ? context.theme.colorScheme.background
                  : context.theme.colorScheme.primary)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
    ).paddingSymmetric(horizontal: 16.r);
  }
}
