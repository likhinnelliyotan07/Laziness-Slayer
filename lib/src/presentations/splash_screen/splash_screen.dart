import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laziness_slayer/src/presentations/auth/screens/login/login_screen.dart';
import 'package:laziness_slayer/src/presentations/custom_widgets/buttons/custom_elevated_button.dart';

import 'package:laziness_slayer/src/presentations/custom_widgets/custom_image_view.dart';
import 'package:laziness_slayer/src/utils/app_assets.dart';
import 'package:laziness_slayer/src/utils/enums.dart';
import 'package:laziness_slayer/src/utils/navigation_utils.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash_screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        context.pushNamedAndRemoveUntil(LoginScreen.routeName);
      }
    });
  }

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

                // padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
                // textStyle: AppTextStyles.appBarTextStyle.copyWith(
                //   color: Colors.white,
                //   fontSize: 16.sp,
                // ),
                label: 'Get Started',
                onPressed: () =>
                    context.pushNamedAndRemoveUntil(LoginScreen.routeName))
          ],
        ),
      ),
    );
  }
}
