import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  // text 9px
  static TextStyle headline1 = GoogleFonts.roboto(
    fontSize: 16.sp,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
  );
  static TextStyle headline2 = GoogleFonts.roboto(
    fontSize: 12.sp,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
  );
  //unselected tabBar style
  static TextStyle unSelectdeTabBarText = GoogleFonts.roboto(
    fontSize: 13.sp,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );
  //selected tabBar Style
  static TextStyle selectedTabBarText = GoogleFonts.roboto(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
  );
  // calculate line height of text
  static double calculateHeight(double height, double fontSize) {
    return height.h / fontSize.sp;
  }

  static double calculateSpacing(double em) {
    return 16 * em;
  }
}
