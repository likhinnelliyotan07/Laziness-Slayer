import 'package:flutter/material.dart';

abstract class BaseButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? label;
  final Widget? icon;
  final EdgeInsetsGeometry? padding; // Padding instead of height
  final double? width;
  final Color? buttonColor;
  final TextStyle? textStyle;
  final BorderSide? borderSide;

  const BaseButton({
    super.key,
    this.onPressed,
    this.label,
    this.icon,
    this.padding,
    this.width,
    this.buttonColor,
    this.textStyle,
    this.borderSide,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: buildButton(context),
    );
  }

  Widget buildButton(BuildContext context);
}
