import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_app/infrastructure/helper/asset_helper.dart';
import 'package:music_app/infrastructure/theme/app_colors.dart';
import '../controllers/root.controller.dart';

class RootScreen extends GetView<RootController> {
  const RootScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    log(context.isDarkMode.toString());
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          toolbarHeight: 50.h,
          leadingWidth: 0,
          title: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.asset(
                  context.isDarkMode
                      ? AssetHelper.lightIcon
                      : AssetHelper.darkIcon,
                  height: 35.h,
                ),
              ).paddingOnly(right: 10.r),
              Text('Musician',
                  style: context.textTheme.headline1!
                      .copyWith(fontWeight: FontWeight.bold))
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: context.iconColor,
                )),
            ClipRRect(
              borderRadius: BorderRadius.circular(800),
              child: Image.asset(
                context.iconColor == AppColors.primary
                    ? AssetHelper.lightIcon
                    : AssetHelper.darkIcon,
              ),
            ).paddingSymmetric(horizontal: 8.r, vertical: 8.r),
          ],
        ),
        body: controller.screens[controller.currentIndex.value],
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: AnimatedContainer(
          duration: 300.milliseconds,
          height: controller.visibleBottom.value ? 45 : 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              3,
              (index) => GestureDetector(
                onTap: () => controller.changeIndex(index),
                child: Icon(
                  controller.icons[index],
                  size: controller.visibleBottom.value ? 25 : 0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
