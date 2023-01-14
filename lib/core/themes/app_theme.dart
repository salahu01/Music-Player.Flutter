import 'package:music_app/imports_bindings.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.primary,
    primaryColor: AppColors.primarySwatch,
    iconTheme: IconThemeData(color: AppColors.darkPrimary, size: 30.sp),
    textTheme: TextTheme(
      headlineLarge: AppStyles.headlineLarge.darkPrimary,
      headline1: AppStyles.headline1.darkPrimary,
      headline2: AppStyles.headline2.darkPrimary,
    ),
    useMaterial3: true,
    dividerTheme: const DividerThemeData(color: AppColors.primary, thickness: 5, space: 0),
    fontFamily: GoogleFonts.roboto().fontFamily,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      background: AppColors.primary,
      seedColor: AppColors.primary,
      primary: AppColors.darkPrimary,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.transparent,
      surfaceTintColor: AppColors.primary,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.primary,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: AppColors.primary,
        systemNavigationBarDividerColor: AppColors.primary,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarContrastEnforced: true,
      ),
    ),
    tabBarTheme: TabBarTheme(
      overlayColor: MaterialStateProperty.all(AppColors.transparent),
      labelColor: AppColors.darkPrimary,
      labelStyle: AppStyles.selectedTabBarText.darkPrimary,
      unselectedLabelStyle: AppStyles.unSelectdeTabBarText.darkPrimary,
      unselectedLabelColor: AppColors.darkPrimary,
      indicator: const BoxDecoration(
        color: AppColors.transparent,
        border: Border(
          bottom: BorderSide(
            color: AppColors.darkPrimary,
            width: 2,
          ),
        ),
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.darkPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
    ),
    splashColor: AppColors.transparent,
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      filled: true,
      hintStyle: AppStyles.trueMusition.primary,
      labelStyle: AppStyles.headline1.primary,
      fillColor: AppColors.darkPrimary,
      constraints: const BoxConstraints(
        minHeight: 44,
        maxWidth: double.infinity,
        minWidth: double.infinity,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primarySwatch,
    scaffoldBackgroundColor: AppColors.darkPrimary,
    brightness: Brightness.dark,
    dividerTheme: const DividerThemeData(color: AppColors.darkPrimary, thickness: 1, space: 0),
    iconTheme: IconThemeData(color: AppColors.primary, size: 30.sp),
    textTheme: TextTheme(
      headlineLarge: AppStyles.headlineLarge.primary,
      headline1: AppStyles.headline1.primary,
      headline2: AppStyles.headline2.primary,
    ),
    useMaterial3: true,
    fontFamily: GoogleFonts.roboto().fontFamily,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      background: AppColors.darkPrimary,
      seedColor: AppColors.primarySwatch,
      primary: AppColors.primary,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.transparent,
      surfaceTintColor: AppColors.darkPrimary,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.darkPrimary,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: AppColors.darkPrimary,
        systemNavigationBarDividerColor: AppColors.darkPrimary,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarContrastEnforced: true,
      ),
    ),
    tabBarTheme: TabBarTheme(
      overlayColor: MaterialStateProperty.all(AppColors.transparent),
      labelColor: AppColors.primary,
      labelStyle: AppStyles.selectedTabBarText.primary,
      unselectedLabelStyle: AppStyles.unSelectdeTabBarText.primary,
      unselectedLabelColor: AppColors.primary,
      indicator: const BoxDecoration(
        color: AppColors.transparent,
        border: Border(
          bottom: BorderSide(
            color: AppColors.primary,
            width: 2,
          ),
        ),
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
    ),
    splashColor: AppColors.transparent,
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      filled: true,
      hintStyle: AppStyles.trueMusition.darkPrimary,
      labelStyle: AppStyles.headline1.darkPrimary,
      fillColor: AppColors.primary,
      constraints: const BoxConstraints(
        minHeight: 44,
        maxWidth: double.infinity,
        minWidth: double.infinity,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
