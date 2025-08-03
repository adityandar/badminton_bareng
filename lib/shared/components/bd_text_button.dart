import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

class BdTextButton extends StatelessWidget {
  const BdTextButton({super.key, required this.onPressed, required this.title});

  final VoidCallback? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(1000),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              title,
              style: BdTStyles.s14w600.copyWith(color: BdColors.primary),
            ),
          ),
        ),
      ),
    );
  }
}
