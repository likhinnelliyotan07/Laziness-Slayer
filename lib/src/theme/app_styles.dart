import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppButtonStyles {
  static ButtonStyle commonBgTabSelected = ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(
      AppColors.bgTabSelected,
    ),
    foregroundColor: WidgetStateProperty.all<Color>(
      AppColors.kWhiteColor,
    ),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
    ),
  );
  static ButtonStyle commonBgTabUnSelected = ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(
      AppColors.kPrimaryBackgroundLight,
    ),
    foregroundColor: WidgetStateProperty.all<Color>(
      AppColors.kWhiteColor,
    ),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: BorderSide(color: AppColors.borderTabUnSelected),
      ),
    ),
  );
  static ButtonStyle commonCornerRoundedRectangle = ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(
      AppColors.kPrimaryBackgroundLight,
    ),
    foregroundColor: WidgetStateProperty.all<Color>(
      AppColors.kWhiteColor,
    ),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: BorderSide(color: AppColors.borderTabUnSelected),
      ),
    ),
  );
}

class AppTextStyles {
  static TextStyle style700Size10 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 12.sp,
  );

  static TextStyle appBarTextStyle = const TextStyle(
    color: AppColors.kBlackColor,
    fontWeight: FontWeight.w700,
  );

  static TextStyle white400Size15 = TextStyle(
    color: Colors.white,
    // fontFamily: AppFonts.gilroy,
    fontWeight: FontWeight.w400,
    fontSize: 15.sp,
  );

  static TextStyle style400GilroyMediumSize14 = TextStyle(
    color: Colors.white,
    // fontFamily: AppFonts.gilroy,
    fontWeight: FontWeight.w400,
    fontSize: 15.sp,
  );
}
