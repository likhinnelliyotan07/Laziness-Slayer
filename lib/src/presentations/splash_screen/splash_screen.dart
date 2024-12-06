import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:laziness_slayer/src/presentations/custom_widgets/custom_image_view.dart';
import 'package:laziness_slayer/src/utils/app_assets.dart';
import 'package:laziness_slayer/src/utils/enums.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
        ],
      ),
    );
  }
}
