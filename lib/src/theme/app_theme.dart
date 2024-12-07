import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laziness_slayer/src/theme/app_styles.dart';
import 'app_colors.dart';

// Assuming the text styles are defined in this file

class AppTheme {
  // Light Theme
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.kWhiteColor,
    colorScheme: const ColorScheme.light(
      primary: AppColors.kLightPrimary, // Light primary background color
      secondary: AppColors.kLightSecondary, // Secondary light theme color
      error: AppColors.kLightError, // Light error color
      surface: AppColors.kLightAccent, // Light surface color
      onPrimary: AppColors.kWhiteColor, // Text color on primary background
      onSecondary: AppColors.kLightTextPrimary, // Text color on secondary
      onError: AppColors.kWhiteColor, // Text color on error background
      onSurface: AppColors.kLightTextPrimary, // Text color on surfaces
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.kWhiteColor,
      foregroundColor: AppColors.kLightTextPrimary, // Text color on AppBar
      iconTheme: const IconThemeData(
          color: AppColors.kLightTextPrimary), // Icon color on AppBar
      titleTextStyle: AppTextStyles.lightAppBarTitle, // AppBar title text style
    ),
    iconTheme: const IconThemeData(
        color: AppColors.kLightTextPrimary), // Default icon color
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor:
          AppColors.kWhiteColor, // Bottom navigation bar background color
      selectedItemColor: AppColors.kLightPrimary, // Selected item color
      unselectedItemColor:
          AppColors.kLightTextSecondary, // Unselected item color
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.kWhiteColor, // Input field background color
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide:
            const BorderSide(color: AppColors.kLightBorder), // Border color
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(color: AppColors.kLightBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(
            color: AppColors.kLightPrimary), // Border color on focus
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.kDarkTextColor, // Text color on button
        backgroundColor: AppColors.btnPrimaryLight, // Button background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.kLightPrimary, // Progress indicator color
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.kLightSecondary, // Chip background color
      disabledColor: AppColors.kLightInactive, // Chip disabled color
      labelStyle: AppTextStyles.lightChipLabel, // Chip label text style
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.kLightTextPrimary, // Cursor color
      selectionHandleColor: AppColors.kLightPrimary, // Selection handle color
      selectionColor: AppColors.kLightAccent, // Selection background color
    ),
    useMaterial3: true, // Enabling Material3
  );

  // Dark Theme
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.kDarkBackground, // Dark background color
    colorScheme: const ColorScheme.dark(
      primary: AppColors.kDarkPrimary, // Dark primary background color
      secondary: AppColors.kDarkSecondary, // Secondary dark theme color
      error: AppColors.kDarkError, // Dark error color
      surface: AppColors.kDarkAccent, // Dark surface color
      onPrimary: AppColors.kWhiteColor, // Text color on primary background
      onSecondary: AppColors.kDarkTextPrimary, // Text color on secondary
      onError: AppColors.kWhiteColor, // Text color on error background
      onSurface: AppColors.kDarkTextPrimary, // Text color on surfaces
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.kDarkBackground,
      foregroundColor: AppColors.kDarkTextPrimary, // Text color on AppBar
      iconTheme: const IconThemeData(
          color: AppColors.kDarkTextPrimary), // Icon color on AppBar
      titleTextStyle: AppTextStyles.darkAppBarTitle, // AppBar title text style
    ),
    iconTheme: const IconThemeData(
        color: AppColors.kDarkTextPrimary), // Default icon color
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor:
          AppColors.kDarkBackground, // Bottom navigation bar background color
      selectedItemColor: AppColors.kDarkPrimary, // Selected item color
      unselectedItemColor:
          AppColors.kDarkTextSecondary, // Unselected item color
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.kDarkBackground, // Input field background color
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide:
            const BorderSide(color: AppColors.kDarkBorder), // Border color
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(color: AppColors.kDarkBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(
            color: AppColors.kDarkPrimary), // Border color on focus
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.kWhiteColor, // Text color on button
        backgroundColor: AppColors.btnPrimaryDark, // Button background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.kDarkPrimary, // Progress indicator color
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.kDarkSecondary, // Chip background color
      disabledColor: AppColors.kDarkInactive, // Chip disabled color
      labelStyle: AppTextStyles.darkChipLabel, // Chip label text style
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.kDarkTextPrimary, // Cursor color
      selectionHandleColor: AppColors.kDarkPrimary, // Selection handle color
      selectionColor: AppColors.kDarkAccent, // Selection background color
    ),
    useMaterial3: true, // Enabling Material3
  );
}
