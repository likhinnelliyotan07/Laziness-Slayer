import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'base_button.dart';

class CustomIconButton extends BaseButton {
  final Color? iconColor;

  const CustomIconButton({
    super.key,
    super.onPressed,
    required super.icon,
    super.padding, // Use padding instead of height
    super.width,
    this.iconColor,
  });

  @override
  Widget buildButton(BuildContext context) {
    // Calculate the icon size dynamically based on padding
    double iconSize = (padding?.vertical ?? 24.h) / 2;

    return IconButton(
      onPressed: onPressed,
      icon: icon!,
      color: iconColor ??
          Theme.of(context).iconTheme.color, // Default color from theme
      iconSize: iconSize, // Icon size based on padding or default value
    );
  }
}
