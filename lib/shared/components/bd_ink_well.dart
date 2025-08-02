import 'package:flutter/material.dart';

// Like a container + InkWell but include splash effect
class BdInkWell extends StatelessWidget {
  const BdInkWell({
    super.key,
    this.onTap,
    this.decoration,
    required this.child,
    this.width,
    this.height,
  });

  final VoidCallback? onTap;
  final BoxDecoration? decoration;
  final double? width;
  final double? height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: decoration?.borderRadius as BorderRadius?,
      child: Ink(
        decoration: decoration,
        width: width,
        height: height,
        child: child,
      ),
    );
  }
}
