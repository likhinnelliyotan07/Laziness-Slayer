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
    this.activeColor,
    this.inactiveColor,
    this.isActive = true, // New property to define active state
  });

  // New properties for active and inactive colors
  final Color? activeColor;
  final Color? inactiveColor;
  final bool isActive; // Boolean to track if the button is active

  @override
  Widget buildButton(BuildContext context) {
    return ElevatedButton(
      onPressed: isActive ? onPressed : null, // Disable button if not active
      style: ElevatedButton.styleFrom(
        padding:
            padding ?? EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        backgroundColor: isActive
            ? activeColor ?? buttonColor
            : inactiveColor ?? buttonColor,
        textStyle: textStyle ??
            TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        side: BorderSide(color: buttonColor ?? Colors.transparent),
      ),
      child: icon != null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                icon!,
                SizedBox(width: 8.w),
                Text(label ?? "", style: textStyle),
              ],
            )
          : Text(label ?? "", style: textStyle),
    );
  }
}
