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
    this.activeTextColor,
    this.inactiveTextColor,
    this.activeBorderColor,
    this.inactiveBorderColor,
    this.isActive = true, // New property to define active state
  });

  // Properties for active and inactive text and border colors
  final Color? activeTextColor;
  final Color? inactiveTextColor;
  final Color? activeBorderColor;
  final Color? inactiveBorderColor;
  final bool isActive; // Boolean to track if the button is active

  @override
  Widget buildButton(BuildContext context) {
    return OutlinedButton(
      onPressed: isActive ? onPressed : null, // Disable button if not active
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: isActive
              ? activeBorderColor ??
                  buttonColor ??
                  Theme.of(context).primaryColor
              : inactiveBorderColor ??
                  buttonColor ??
                  Theme.of(context).disabledColor,
          width: 1.5,
        ),
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
                Text(
                  label ?? "",
                  style: TextStyle(
                    color: isActive
                        ? activeTextColor ?? Colors.black
                        : inactiveTextColor ?? Colors.grey,
                  ),
                ),
              ],
            )
          : Text(
              label ?? "",
              style: TextStyle(
                color: isActive
                    ? activeTextColor ?? Colors.black
                    : inactiveTextColor ?? Colors.grey,
              ),
            ),
    );
  }
}
