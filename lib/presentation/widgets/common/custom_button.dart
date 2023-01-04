import 'package:music_app/imports_bindings.dart';

class Button {
  static Widget loading({
    required void Function() onPressed,
    required String text,
    required bool isLoading,
    double? height,
    double? width,
    double? loadingSize,
  }) =>
      SizedBox(
        height: height,
        width: width,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(backgroundColor: Get.iconColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r))),
          child: isLoading
              ? SizedBox(height: loadingSize, width: loadingSize, child: CircularProgressIndicator(color: Get.theme.backgroundColor, strokeWidth: 3))
              : Text(text, style: Get.textTheme.headline1!.copyWith(color: Get.theme.scaffoldBackgroundColor)),
        ),
      );

  static Widget label({
    required String label,
    required IconData icon,
    Color? iconColor,
    Color? labelColor,
    double? iconSize,
    double? labelSize,
    double? spacing,
  }) =>
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: iconSize ?? 20.sp, color: iconColor),
          SizedBox(width: spacing ?? 5.w),
          Text(
            label,
            style: Get.textTheme.headline2!.copyWith(fontSize: labelSize, color: labelColor),
          )
        ],
      );
}
