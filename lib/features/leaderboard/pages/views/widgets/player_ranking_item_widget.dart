import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:badmintoon/utils/utils.dart';
import 'package:flutter/material.dart';

class PlayerRankingItemWidget extends StatelessWidget {
  const PlayerRankingItemWidget({
    super.key,
    required this.number,
    required this.player,
  });

  final int number;
  final PlayerEntity player;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          Text('$number.', style: BdTStyles.s16w700),
          Gap(8),
          BdCircleAvatar(name: player.name, size: 32),
          Gap(8),
          Expanded(
            child: Text(player.name.toTitleCase(), style: BdTStyles.s14w500),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: BdColors.subtleGreen,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              '${player.wins}W / ${player.losses}L',
              style: BdTStyles.s10w700.copyWith(color: BdColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
