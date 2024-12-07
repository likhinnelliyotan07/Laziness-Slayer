import 'package:flutter/material.dart';

class AppColors {
  // Light Theme Colors
  static const Color kWhiteColor = Color(0xffFBFBFB); // Background
  static const Color kLightPrimary =
      Color(0xffC6E7FF); // Primary (Button background for Light theme)
  static const Color kLightSecondary = Color(0xffD4F6FF); // Secondary
  static const Color kLightAccent = Color(0xffFFDDAC); // Accent/Highlight
  static const Color kLightError = Color(0xffFF6F61); // Error
  static const Color kLightTextPrimary =
      Color(0xff2E2E2E); // Text Primary (for button text in light theme)
  static const Color kLightTextSecondary = Color(0xff7A7A7A); // Text Secondary
  static const Color kLightInactive = Color(0xffD3D3D3); // Inactive/Disabled
  static const Color kLightBorder = Color(0xffE6E6E6); // Borders

  // Dark Theme Colors
  static const Color kDarkBackground = Color(0xff2E073F); // Background
  static const Color kDarkPrimary =
      Color(0xff7A1CAC); // Primary (Button background for Dark theme)
  static const Color kDarkSecondary = Color(0xffAD49E1); // Secondary
  static const Color kDarkAccent = Color(0xffEBF8D3); // Accent/Highlight
  static const Color kDarkError = Color(0xffFF7377); // Error
  static const Color kDarkTextPrimary =
      Color(0xffFBFBFB); // Text Primary (light text for dark theme)
  static const Color kDarkTextSecondary =
      Color(0xffB3B3B3); // Text Secondary (lighter text)
  static const Color kDarkInactive = Color(0xff4B4B4B); // Inactive/Disabled
  static const Color kDarkBorder = Color(0xff3C3C3C); // Borders

  // Common Colors
  static const Color transparent = Color(0x00000000);

  // Buttons
  static const Color btnPrimaryLight = kLightPrimary; // Light button background
  static const Color btnPrimaryDark = kDarkPrimary; // Dark button background
  static const Color btnSecondaryLight =
      kLightSecondary; // Light button secondary background
  static const Color btnSecondaryDark =
      kDarkSecondary; // Dark button secondary background
  static const Color btnErrorLight =
      kLightError; // Error button color in light theme
  static const Color btnErrorDark =
      kDarkError; // Error button color in dark theme
  static const Color btnInactiveLight =
      kLightInactive; // Inactive button color in light theme
  static const Color btnInactiveDark =
      kDarkInactive; // Inactive button color in dark theme

  // Gradients
  static const List<Color> gradientLight = [
    kLightPrimary,
    kLightSecondary,
  ];
  static const List<Color> gradientDark = [
    kDarkPrimary,
    kDarkSecondary,
  ];

  // Tabs
  static const Color tabSelectedLight =
      kLightPrimary; // Tab selected in light theme
  static const Color tabSelectedDark =
      kDarkPrimary; // Tab selected in dark theme
  static const Color tabUnselectedLight =
      kLightInactive; // Tab unselected in light theme
  static const Color tabUnselectedDark =
      kDarkInactive; // Tab unselected in dark theme

  // Text colors
  static const Color kLightTextColor =
      Color(0xff2E2E2E); // Text color for light theme
  static const Color kDarkTextColor =
      Color(0xffFBFBFB); // Text color for dark theme
}
