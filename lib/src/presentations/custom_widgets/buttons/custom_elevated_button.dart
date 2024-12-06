import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'base_button.dart';

class CustomElevatedButton extends BaseButton {
  const CustomElevatedButton({
    super.key,
    super.onPressed,
    super.label,
    super.icon,
    super.padding, // Now using padding instead of height
    super.width,
    super.buttonColor,
    super.textStyle,
  });

  @override
  Widget buildButton(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding:
            padding ?? EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        backgroundColor: buttonColor ?? Theme.of(context).primaryColor,
        textStyle: textStyle ??
            TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
      child: icon != null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                icon!,
                SizedBox(width: 8.w),
                Text(label ?? "",
                    style: textStyle ?? TextStyle(fontSize: 16.sp)),
              ],
            )
          : Text(label ?? "", style: textStyle ?? TextStyle(fontSize: 16.sp)),
    );
  }
}
