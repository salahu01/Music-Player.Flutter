import 'dart:ffi';

import 'package:music_app/imports_bindings.dart';

class AuthScreen extends GetView<AuthController> {
  const AuthScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: Get.height,
            child: Column(
              children: [
                const Spacer(
                  flex: 3,
                ),
                Hero(
                  tag: HeroTags.trueMusicianTag,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(32.r),
                    child: Image.asset(appIcon, height: 140.h),
                  ),
                ),
                Text('The true musician', style: AppStyles.trueMusition).paddingSymmetric(vertical: 4.r),
                const Spacer(
                  flex: 2,
                ),
                Text('Enjoy free musics from Musician', style: context.textTheme.headlineLarge).paddingSymmetric(horizontal: 16.r),
                const Spacer(
                  flex: 3,
                ),
                TextFormField(
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: const InputDecoration(hintText: 'user name ?'),
                  style: AppStyles.headline1.copyWith(color: context.theme.scaffoldBackgroundColor),
                  cursorColor: context.theme.scaffoldBackgroundColor,
                ).paddingSymmetric(vertical: 16.r, horizontal: 16.r),
                Button.loading(
                  onPressed: () {
                    Get.offAndToNamed(Routes.root);
                  },
                  text: 'Continue',
                  isLoading: false,
                  height: 40.h,
                  width: double.maxFinite,
                  loadingSize: 25.r,
                ).paddingSymmetric(horizontal: 16.r),
                const Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
