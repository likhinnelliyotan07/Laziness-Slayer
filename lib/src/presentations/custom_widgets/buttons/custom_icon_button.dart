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
    return IconButton(
      onPressed: onPressed,
      icon: icon!,
      color: iconColor ??
          Theme.of(context).iconTheme.color, // Default color from theme
      iconSize: padding != null
          ? (padding!.vertical / 2)
          : 24.r, // Calculate size based on padding or default
    );
  }
}
