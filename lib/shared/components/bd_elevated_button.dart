import 'package:badmintoon/shared/shared.dart';
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
  });

  final VoidCallback onPressed;
  final String title;
  final TextStyle? textStyle;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final double? minWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: minWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
        ),
        child: Text(title, style: textStyle ?? BdTStyles.s12w600),
      ),
    );
  }
}
