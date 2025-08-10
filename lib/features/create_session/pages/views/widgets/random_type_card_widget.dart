import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:badminton_bareng/domain/domain.dart';
import 'package:badminton_bareng/shared/shared.dart';
import 'package:flutter/material.dart';

class RandomTypeCardWidget extends StatelessWidget {
  const RandomTypeCardWidget({
    super.key,
    required this.matchType,
    required this.isSelected,
    required this.onTap,
  });

  final MatchType matchType;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return BdInkWell(
      onTap: onTap,
      padding: const EdgeInsets.fromLTRB(16, 16, 12, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: BdColors.white,
        boxShadow: BdShadows.defaultShadows,
        border: Border.all(
          color: isSelected ? BdColors.primary : Colors.transparent,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Image.asset(matchType.iconPath, width: 48, height: 48),
          Gap(8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(matchType.title, style: BdTStyles.s14w700),
                Gap(2),
                Text(matchType.description, style: BdTStyles.s12w400),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
