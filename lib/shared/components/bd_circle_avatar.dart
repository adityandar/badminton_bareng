import 'package:badminton_bareng/shared/shared.dart';
import 'package:badminton_bareng/utils/utils.dart';
import 'package:flutter/material.dart';

class BdCircleAvatar extends StatelessWidget {
  const BdCircleAvatar({super.key, required this.name, required this.size});

  final String name;
  final double size;

  @override
  Widget build(BuildContext context) {
    final initial = StringHelper.initial(name, 2);

    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: BdColors.primary,
        shape: BoxShape.circle,
      ),
      child: Text(
        initial,
        style: BdTStyles.s10w600.copyWith(color: Colors.white),
      ),
    );
  }
}
