import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

class BdElevatedButton extends ElevatedButton {
  BdElevatedButton({
    super.key,
    required super.onPressed,
    required String title,
    TextStyle? textStyle,
    Color? foregroundColor,
    Color? backgroundColor,
  }) : super(
         style: ElevatedButton.styleFrom(
           foregroundColor: foregroundColor,
           backgroundColor: backgroundColor,
         ),
         child: Text(title, style: textStyle ?? BdTStyles.s12w600),
       );
}
