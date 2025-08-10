import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

import 'index.dart';

class LeaderboardBodyView extends StatelessWidget {
  const LeaderboardBodyView({
    super.key,
    required this.topThreePlayers,
    required this.remainingPlayers,
    required this.isOngoing,
  });

  final List<PlayerEntity> topThreePlayers;
  final List<PlayerEntity> remainingPlayers;
  final bool isOngoing;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        children: [
          Column(
            children: [
              Gap(16),
              Text(
                'LEADERBOARD ${isOngoing ? 'SEMENTARA' : 'FINAL'}',
                textAlign: TextAlign.center,
                style: BdTStyles.s20w900,
              ),
              TopThreeView(topThreePlayers: topThreePlayers),
              Gap(16),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.only(top: 8, bottom: 100),
                  itemCount: remainingPlayers.length,
                  itemBuilder: (context, index) {
                    final player = remainingPlayers[index];
                    final number = index + 4;

                    return PlayerRankingItemWidget(
                      number: number,
                      player: player,
                    );
                  },
                  separatorBuilder: (context, index) => Divider(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
