import 'package:badmintoon/core/core.dart';
import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

import '../../cubits/index.dart';
import '../../listeners/index.dart';
import 'index.dart';

class MatchBodyView extends StatelessWidget {
  const MatchBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return MatchFinishedListener(
      child: BlocBuilder<GameplayCubit, GameplayState>(
        builder: (context, gameplayState) {
          return BlocBuilder<MatchCubit, MatchState>(
            builder: (context, matchState) {
              final players = gameplayState.activeSession?.players ?? [];
              final match = matchState.match;

              if (match == null) {
                return const Center(
                  child: Text('Tidak ada pertandingan yang sedang berlangsung'),
                );
              }

              // refactor to usecase and create models with populated players
              final redPlayers =
                  match.redPlayerIds
                      .map(
                        (id) => players.firstWhereOrNull(
                          (player) => player.id == id,
                        ),
                      )
                      .nonNulls
                      .toList();
              final bluePlayers =
                  match.bluePlayerIds
                      .map(
                        (id) => players.firstWhereOrNull(
                          (player) => player.id == id,
                        ),
                      )
                      .nonNulls
                      .toList();

              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    decoration: BoxDecoration(
                      boxShadow: BdShadows.defaultShadows,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: MatchTeamSideWidget.left(
                            teamName: 'Team Merah',
                            teamColor: BdColors.red,
                            playerNames: redPlayers.map((e) => e.name).toList(),
                          ),
                        ),
                        Expanded(
                          child: MatchTeamSideWidget.right(
                            teamName: 'Team Biru',
                            teamColor: BdColors.blue,
                            playerNames:
                                bluePlayers.map((e) => e.name).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
