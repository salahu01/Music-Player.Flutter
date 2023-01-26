import 'package:music_app/imports_bindings.dart';

class SettingsScreen extends GetView<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30.h,
        title: Row(
          children: [
            Flexible(child: Divider(color: context.iconColor, thickness: 1.r)),
            Text(LocaleKeys.settings.tr, style: context.textTheme.headline1!.copyWith(fontSize: 25.sp)).paddingSymmetric(horizontal: 5.r),
            Flexible(child: Divider(color: context.iconColor, thickness: 1.r)),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(LocaleKeys.theme.tr, style: AppStyles.headline1.copyWith(fontSize: 16.sp)),
              Obx(() => DropdownButton(
                    value: controller.selectedTheme.value,
                    underline: const SizedBox(),
                    items: AppData.themeModes.map((e) => DropdownMenuItem(value: e.themeMode, child: Text(e.label, style: AppStyles.headline2))).toList(),
                    onChanged: controller.changeTheme,
                  )),
            ],
          ).paddingSymmetric(vertical: 8.r),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(LocaleKeys.languages.tr, style: AppStyles.headline1.copyWith(fontSize: 16.sp)),
              Obx(() => DropdownButton(
                    value: controller.selectedLanguage.value,
                    underline: const SizedBox(),
                    items: AppData.languages.map((e) => DropdownMenuItem(value: e.value, child: Text(e.label, style: AppStyles.headline2))).toList(),
                    onChanged: controller.changeLanguage,
                  )),
            ],
          ).paddingSymmetric(vertical: 8.r),
          const Spacer(),
          Text('v0.0.1', style: TextStyle(fontSize: 15.sp))
        ],
      ).paddingAll(16.r),
    );
  }
}
