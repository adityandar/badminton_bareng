import 'package:badminton_bareng/shared/shared.dart';
import 'package:flutter/material.dart';

class BdElevatedButton extends StatelessWidget {
  const BdElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.textStyle,
    this.foregroundColor,
    this.backgroundColor,
    this.minWidth,
    this.minHeight,
  });

  final VoidCallback onPressed;
  final String title;
  final TextStyle? textStyle;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final double? minWidth;
  final double? minHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: minWidth,
      height: minHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: foregroundColor ?? Colors.white,
          backgroundColor: backgroundColor ?? BdColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000),
          ),
        ),
        child: Text(
          title,
          style: textStyle ?? BdTStyles.s14w600,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
