import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';
import 'app_fonts.dart';

class AppButtonStyles {
  // Light Tab Selected
  static ButtonStyle commonBgTabSelected = ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(
      AppColors.tabSelectedLight, // Light theme tab selected background
    ),
    foregroundColor: WidgetStateProperty.all<Color>(
      AppColors.kWhiteColor, // White text color for light background
    ),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
    ),
  );

  // Light Tab Unselected
  static ButtonStyle commonBgTabUnSelected = ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(
      AppColors.kLightPrimary, // Lighter background for unselected tabs
    ),
    foregroundColor: WidgetStateProperty.all<Color>(
      AppColors.kDarkTextColor, // Dark text for better contrast when unselected
    ),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: const BorderSide(color: AppColors.kLightBorder),
      ),
    ),
  );

  // Common Rounded Corner Button
  static ButtonStyle commonCornerRoundedRectangle = ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(
      AppColors.kLightPrimary, // Light primary color for background
    ),
    foregroundColor: WidgetStateProperty.all<Color>(
      AppColors.kDarkTextColor, // Dark text color for contrast
    ),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.r),
        side: const BorderSide(color: AppColors.kLightBorder),
      ),
    ),
  );

  // Dark Tab Selected
  static ButtonStyle darkTabSelected = ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(
      AppColors.kDarkPrimary, // Dark background for tab selected
    ),
    foregroundColor: WidgetStateProperty.all<Color>(
      AppColors.kWhiteColor, // White text for dark background
    ),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.r),
      ),
    ),
  );

  // Dark Tab Unselected
  static ButtonStyle darkTabUnSelected = ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(
      AppColors.kDarkSecondary, // Dark secondary background for unselected tab
    ),
    foregroundColor: WidgetStateProperty.all<Color>(
      AppColors.kLightTextColor, // Light text color for dark background
    ),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: const BorderSide(color: AppColors.kDarkBorder),
      ),
    ),
  );
}

class AppTextStyles {
  static TextStyle style700Size10 = TextStyle(
    fontFamily: AppFonts.regular,
    fontWeight: FontWeight.w700,
    fontSize: 10.sp,
    color: AppColors.kLightTextPrimary,
  );

  static TextStyle appBarTextStyle = TextStyle(
    fontFamily: AppFonts.regular,
    color: AppColors.kLightTextPrimary,
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
  );

  static TextStyle white400Size15 = TextStyle(
    fontFamily: AppFonts.regular,
    color: AppColors.kWhiteColor,
    fontWeight: FontWeight.w400,
    fontSize: 15.sp,
  );

  static TextStyle style400MediumSize14 = TextStyle(
    fontFamily: AppFonts.medium,
    color: AppColors.kLightTextPrimary,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );

  static TextStyle style400LightSize16 = TextStyle(
    fontFamily: AppFonts.light,
    color: AppColors.kLightTextPrimary,
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
  );

  static TextStyle style500Size12 = TextStyle(
    fontFamily: AppFonts.medium,
    color: AppColors.kLightTextPrimary,
    fontWeight: FontWeight.w500,
    fontSize: 12.sp,
  );

  static TextStyle style600Size18 = TextStyle(
    fontFamily: AppFonts.semibold,
    color: AppColors.kLightTextPrimary,
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
  );

  static TextStyle style700Size20 = TextStyle(
    fontFamily: AppFonts.bold,
    color: AppColors.kLightTextPrimary,
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
  );

  static TextStyle style300Size14 = TextStyle(
    fontFamily: AppFonts.light,
    color: AppColors.kLightTextSecondary,
    fontWeight: FontWeight.w300,
    fontSize: 14.sp,
  );

  static TextStyle style600Size16 = TextStyle(
    fontFamily: AppFonts.semibold,
    color: AppColors.kLightTextPrimary,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
  );

  static TextStyle style500Size24 = TextStyle(
    fontFamily: AppFonts.medium,
    color: AppColors.kLightTextPrimary,
    fontWeight: FontWeight.w500,
    fontSize: 24.sp,
  );

  static TextStyle style700Size30 = TextStyle(
    fontFamily: AppFonts.bold,
    color: AppColors.kLightTextPrimary,
    fontWeight: FontWeight.w700,
    fontSize: 30.sp,
  );

  // Dark mode styles
  static TextStyle darkStyle700Size10 = TextStyle(
    fontFamily: AppFonts.regular,
    fontWeight: FontWeight.w700,
    fontSize: 10.sp,
    color: AppColors.kDarkTextPrimary,
  );

  static TextStyle darkAppBarTextStyle = TextStyle(
    fontFamily: AppFonts.regular,
    color: AppColors.kDarkTextPrimary,
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
  );

  static TextStyle darkStyle400MediumSize14 = TextStyle(
    fontFamily: AppFonts.medium,
    color: AppColors.kDarkTextPrimary,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );

  static TextStyle darkStyle400LightSize16 = TextStyle(
    fontFamily: AppFonts.light,
    color: AppColors.kDarkTextPrimary,
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
  );

  static TextStyle darkStyle500Size12 = TextStyle(
    fontFamily: AppFonts.medium,
    color: AppColors.kDarkTextPrimary,
    fontWeight: FontWeight.w500,
    fontSize: 12.sp,
  );

  static TextStyle darkStyle600Size18 = TextStyle(
    fontFamily: AppFonts.semibold,
    color: AppColors.kDarkTextPrimary,
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
  );

  static TextStyle darkStyle700Size20 = TextStyle(
    fontFamily: AppFonts.bold,
    color: AppColors.kDarkTextPrimary,
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
  );

  static TextStyle darkStyle300Size14 = TextStyle(
    fontFamily: AppFonts.light,
    color: AppColors.kDarkTextSecondary,
    fontWeight: FontWeight.w300,
    fontSize: 14.sp,
  );

  static TextStyle darkStyle600Size16 = TextStyle(
    fontFamily: AppFonts.semibold,
    color: AppColors.kDarkTextPrimary,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
  );

  static TextStyle darkStyle500Size24 = TextStyle(
    fontFamily: AppFonts.medium,
    color: AppColors.kDarkTextPrimary,
    fontWeight: FontWeight.w500,
    fontSize: 24.sp,
  );

  static TextStyle darkStyle700Size30 = TextStyle(
    fontFamily: AppFonts.bold,
    color: AppColors.kDarkTextPrimary,
    fontWeight: FontWeight.w700,
    fontSize: 30.sp,
  );

  // Chip Label Styles
  static TextStyle lightChipLabel = TextStyle(
    fontFamily: AppFonts.regular,
    color: AppColors.kLightTextPrimary,
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );

  static TextStyle darkChipLabel = TextStyle(
    fontFamily: AppFonts.regular,
    color: AppColors.kDarkTextPrimary,
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );

  // Dark Mode AppBar Title
  static TextStyle darkAppBarTitle = TextStyle(
    fontFamily: AppFonts.regular,
    color: AppColors
        .kDarkTextPrimary, // Ensure kDarkTextPrimary is defined in AppColors
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
  );

  // Light Mode AppBar Title
  static TextStyle lightAppBarTitle = TextStyle(
    fontFamily: AppFonts.regular,
    color: AppColors
        .kLightTextPrimary, // Ensure kLightTextPrimary is defined in AppColors
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
  );
}
