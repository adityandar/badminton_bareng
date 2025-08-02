import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

class MatchTeamSideWidget extends StatelessWidget {
  const MatchTeamSideWidget.left({
    super.key,
    required this.teamName,
    required this.teamColor,
    required this.playerNames,
  }) : isLeft = true;

  const MatchTeamSideWidget.right({
    super.key,
    required this.teamName,
    required this.teamColor,
    required this.playerNames,
  }) : isLeft = false;

  final String teamName;
  final Color teamColor;
  final List<String> playerNames;
  final bool isLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      decoration: BoxDecoration(
        color: teamColor,
        borderRadius: BorderRadius.horizontal(
          left: isLeft ? Radius.circular(8) : Radius.zero,
          right: isLeft ? Radius.zero : Radius.circular(8),
        ),
        border: Border(
          left:
              isLeft
                  ? BorderSide.none
                  : BorderSide(color: BdColors.white, width: 0.5),
          right:
              isLeft
                  ? BorderSide(color: BdColors.white, width: 0.5)
                  : BorderSide.none,
        ),
      ),
      child: Column(
        children: [
          Text(
            teamName,
            style: BdTStyles.s16w700.copyWith(color: BdColors.white),
          ),
          Divider(color: BdColors.white),
          ...playerNames
              .map(
                (player) => Text(
                  player,
                  style: BdTStyles.s14w400.copyWith(color: BdColors.white),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
