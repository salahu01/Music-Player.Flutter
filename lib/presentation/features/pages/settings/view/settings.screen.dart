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
            Text('Settings', style: context.textTheme.headline1!.copyWith(fontSize: 25.sp)).paddingSymmetric(horizontal: 5.r),
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
              Text('Theme', style: AppStyles.headline1.copyWith(fontSize: 18.sp)),
              Obx(() => DropdownButton(
                    value: controller.selectedTheme.value,
                    underline: const SizedBox(),
                    items: AppData.themeModes.map((e) => DropdownMenuItem(value: e.themeMode, child: Text(e.label, style: AppStyles.headline2))).toList(),
                    onChanged: controller.changeTheme,
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
