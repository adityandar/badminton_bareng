import 'package:badminton_bareng/shared/shared.dart';
import 'package:flutter/material.dart';

class BdOutlinedButton extends StatelessWidget {
  const BdOutlinedButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.textStyle,
    this.foregroundColor,
    this.backgroundColor,
    this.minWidth,
    this.minHeight,
    this.isLoading = false,
    this.isEnabled = true,
  });

  final VoidCallback onPressed;
  final String title;
  final TextStyle? textStyle;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final double? minWidth;
  final double? minHeight;
  final bool isLoading;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: minWidth,
      height: minHeight,
      child: ElevatedButton(
        onPressed: isEnabled && !isLoading ? onPressed : null,
        style: ElevatedButton.styleFrom(
          foregroundColor: foregroundColor ?? BdColors.primary,
          backgroundColor: backgroundColor ?? BdColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000),
            side: BorderSide(
              color:
                  isEnabled
                      ? (foregroundColor ?? BdColors.primary)
                      : Colors.transparent,
            ),
          ),
        ),
        child:
            isLoading
                ? Center(child: CircularProgressIndicator())
                : Text(
                  title,
                  style: textStyle ?? BdTStyles.s12w600,
                  textAlign: TextAlign.center,
                ),
      ),
    );
  }
}
