import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laziness_slayer/src/presentations/auth/screens/login/login_screen.dart';
import 'package:laziness_slayer/src/presentations/custom_widgets/buttons/custom_elevated_button.dart';

import 'package:laziness_slayer/src/presentations/custom_widgets/custom_image_view.dart';
import 'package:laziness_slayer/src/theme/app_colors.dart';
import 'package:laziness_slayer/src/theme/app_styles.dart';
import 'package:laziness_slayer/src/utils/app_assets.dart';
import 'package:laziness_slayer/src/utils/enums.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash_screen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CustomImageView(
                imagePath: AppAssets.logoTransparent,
                imageType: ImageType.assets,
                width: 200.w,
                boxFit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(height: 10.h),
            CustomElevatedButton(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
              buttonColor: AppColors.kRedColor,
              textStyle: AppTextStyles.appBarTextStyle.copyWith(
                color: Colors.white,
                fontSize: 16.sp,
              ),
              label: 'Get Started',
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, LoginScreen.routeName, (route) => false),
            )
          ],
        ),
      ),
    );
  }
}
