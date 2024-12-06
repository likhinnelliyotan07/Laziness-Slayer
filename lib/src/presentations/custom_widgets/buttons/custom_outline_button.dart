import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'base_button.dart';

class CustomOutlineButton extends BaseButton {
  const CustomOutlineButton({
    super.key,
    super.onPressed,
    super.label,
    super.icon,
    super.padding, // Use padding instead of height
    super.width,
    super.buttonColor,
    super.textStyle,
    super.borderSide,
  });

  @override
  Widget buildButton(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: borderSide ??
            BorderSide(
                color: buttonColor ?? Theme.of(context).primaryColor,
                width: 1.5),
        textStyle: textStyle ??
            TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        padding: padding ??
            EdgeInsets.symmetric(
                vertical: 12.h, horizontal: 16.w), // Default padding
      ),
      child: icon != null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                icon!,
                SizedBox(width: 8.w),
                Text(label ?? ""),
              ],
            )
          : Text(label ?? ""),
    );
  }
}
