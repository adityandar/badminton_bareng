import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';
import 'package:flutter/material.dart';

import 'widgets/index.dart';

class TopThreeView extends StatelessWidget {
  const TopThreeView({super.key, required this.topThreePlayers});

  final List<PlayerEntity> topThreePlayers;

  @override
  Widget build(BuildContext context) {
    if (topThreePlayers.length < 3) {
      return const SizedBox();
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
      decoration: BoxDecoration(
        // color: BdColors.softestBlue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Transform(
                    transform: Matrix4.translationValues(0, 20, 0),
                    child: TopThreeItemWidget(
                      rank: 2,
                      player: topThreePlayers[1],
                    ),
                  ),
                ),
                Gap(8),
                Expanded(
                  child: TopThreeItemWidget(
                    rank: 1,
                    player: topThreePlayers[0],
                  ),
                ),
                Gap(8),
                Expanded(
                  child: Transform(
                    transform: Matrix4.translationValues(0, 20, 0),
                    child: TopThreeItemWidget(
                      rank: 3,
                      player: topThreePlayers[2],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
