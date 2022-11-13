import 'package:flutter/material.dart';
import 'package:music_app/infrastructure/theme/app_colors.dart';

extension TypographyExtension on TextStyle {
  TextStyle get darkPrimary => copyWith(color: AppColors.darkPrimary);

  TextStyle get primary => copyWith(color: AppColors.primary);

  TextStyle get primarySwatch => copyWith(color: AppColors.primarySwatch);
}
