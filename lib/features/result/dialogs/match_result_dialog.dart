import 'dart:math';

import 'package:badmintoon/core/core.dart';
import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

enum MatchResultDialogActionType { continueGame, viewStatistics, finish }

class MatchResultDialog extends StatefulWidget {
  const MatchResultDialog({super.key, required this.winner});

  final TeamEnum winner;

  static Future<MatchResultDialogActionType?> show(
    BuildContext context, {
    required TeamEnum winner,
  }) async {
    return showDialog<MatchResultDialogActionType>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => MatchResultDialog(winner: winner),
    );
  }

  @override
  State<MatchResultDialog> createState() => _MatchResultDialogState();
}

class _MatchResultDialogState extends State<MatchResultDialog> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(
      duration: const Duration(seconds: 3),
    );

    if (mounted) {
      _confettiController.play();
    }
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  String winnerEmoji(int rank) {
    switch (rank) {
      case 0:
        return '🥇';
      case 1:
        return '🥈';
      case 2:
        return '🥉';
      default:
        return '🪙';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameplayCubit, GameplayState>(
      builder: (context, state) {
        final matchIndex = state.activeSession?.matches.length ?? 0;
        final threeTopPlayers = context.read<GameplayCubit>().getTopPlayers(3);

        return Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: BdColors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '🏆 Selamat! Team ${widget.winner.name} Menang! 🎉',
                      style: BdTStyles.s20w700,
                    ),
                    Text(
                      'Game ke-${matchIndex + 1} sudah selesai',
                      style: BdTStyles.s16w600,
                    ),
                    Gap(16),
                    Text(
                      '🔥 Top ${threeTopPlayers.length} Peringkat',
                      style: BdTStyles.s16w600,
                    ),
                    Gap(4),
                    ...threeTopPlayers.mapIndexed(
                      (index, player) => Text(
                        '${winnerEmoji(index)} '
                        '${player.name} — ${player.wins}x menang',
                        style: BdTStyles.s16w400,
                      ),
                    ),
                    Gap(8),
                    Text(
                      'Siap untuk game berikutnya? 😉',
                      style: BdTStyles.s16w400,
                    ),
                    Gap(16),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        BdElevatedButton(
                          title: 'Lanjut Main',
                          onPressed: () {
                            context.pop(
                              MatchResultDialogActionType.continueGame,
                            );
                          },
                        ),
                        Gap(8),
                        BdOutlinedButton(
                          onPressed: () {
                            context.pop(
                              MatchResultDialogActionType.viewStatistics,
                            );
                          },
                          title: 'Liat Statistik',
                        ),
                      ],
                    ),
                    Gap(8),
                    BdTextButton(
                      onPressed: () {
                        context.pop(MatchResultDialogActionType.finish);
                      },
                      title: 'Selesai',
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirection: 5 * pi / 4,
                particleDrag: 0.05,
                emissionFrequency: 0.05,
                numberOfParticles: 10,
                gravity: 0.05,
                shouldLoop: false,
                colors: const [Colors.green, Colors.blue, Colors.pink],
                strokeWidth: 1,
                strokeColor: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirection: 7 * pi / 4,
                particleDrag: 0.05,
                emissionFrequency: 0.05,
                numberOfParticles: 10,
                gravity: 0.05,
                shouldLoop: false,
                colors: const [Colors.green, Colors.blue, Colors.pink],
                strokeWidth: 1,
                strokeColor: Colors.white,
              ),
            ),
          ],
        );
      },
    );
  }
}
