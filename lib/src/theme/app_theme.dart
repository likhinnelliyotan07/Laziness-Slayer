import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_styles.dart';

class AppTheme {
  //light theme settings
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.kPrimaryBackgroundLight,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.kChillyRed,
      // Ensure this matches ThemeData's brightness
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.kPrimaryBackgroundLight,
      foregroundColor: AppColors.kBlackColor,
      iconTheme: const IconThemeData(
        color: AppColors.kBlackColor,
      ),
      titleTextStyle: const TextStyle(
        color: AppColors.kBlackColor,
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppColors.kBlackColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.kPrimaryBackgroundLight,
      selectedItemColor: AppColors.kRedColor,
      unselectedItemColor: AppColors.kBlackColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.kPrimaryBackgroundLight,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.kBlackColor,
      ),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColors.kChillyRed,
    ),
    useMaterial3: true,
    cardColor: AppColors.kAmberBackground,
    canvasColor: AppColors.kGreyBgColor,
    popupMenuTheme: const PopupMenuThemeData(
      color: AppColors.kWhiteColor,
      iconColor: AppColors.kBlackColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.kAmberBackground,
      disabledColor: AppColors.kAmberBackground,
      labelStyle: AppTextStyles.style400GilroyMediumSize14.copyWith(
        fontSize: 12.sp,
        color: AppColors.kBlackColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.r),
        ),
        side: const BorderSide(
          color: Colors.transparent,
        ),
      ),
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: AppColors.kWhiteColor,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.kBlackColor,
      selectionHandleColor: AppColors.kBlackColor,
      selectionColor: AppColors.kChillyRed,
    ),
  );

//dark theme settings
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.kColor181819,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.kChillyRed,
      // Ensure this matches ThemeData's brightness
      brightness: Brightness.dark,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.kColor181819,
      foregroundColor: AppColors.kWhiteColor,
      iconTheme: IconThemeData(
        color: AppColors.kWhiteColor,
      ),
      titleTextStyle: TextStyle(
        color: AppColors.kWhiteColor,
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppColors.kWhiteColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.kColor181819,
      selectedItemColor: AppColors.kRedColor,
      unselectedItemColor: AppColors.kWhiteColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: AppColors.kColor181819,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.kWhiteColor,
      ),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColors.kChillyRed,
    ),
    useMaterial3: true,
    cardColor: AppColors.kBottomNavBgDark,
    canvasColor: AppColors.kBottomNavBgDark,
    popupMenuTheme: const PopupMenuThemeData(
      color: AppColors.kBottomNavBgDark,
      iconColor: AppColors.kWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.kColor292826,
      disabledColor: AppColors.kColor292826,
      labelStyle: AppTextStyles.style400GilroyMediumSize14.copyWith(
        fontSize: 12.sp,
        color: AppColors.kWhiteColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.r),
        ),
        side: const BorderSide(
          color: Colors.transparent,
        ),
      ),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.kNegative,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.kWhiteColor,
      selectionHandleColor: AppColors.kWhiteColor,
      selectionColor: AppColors.kChillyRed,
    ),
  );
}
