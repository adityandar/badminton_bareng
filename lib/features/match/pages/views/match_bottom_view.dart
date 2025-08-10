// ignore_for_file: use_build_context_synchronously

import 'package:badminton_bareng/core/core.dart';
import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:badminton_bareng/domain/domain.dart';
import 'package:badminton_bareng/features/match/cubits/match_cubit.dart';
import 'package:badminton_bareng/features/result/index.dart';
import 'package:badminton_bareng/routers/index.dart';
import 'package:badminton_bareng/shared/shared.dart';
import 'package:flutter/material.dart';

class MatchBottomView extends StatelessWidget {
  const MatchBottomView({super.key});

  Future<void> _submitMatchResult(
    BuildContext context, {
    required TeamEnum winner,
  }) async {
    final gameplayCubit = context.read<GameplayCubit>();
    final matchCubit = context.read<MatchCubit>();
    matchCubit.completeMatch(winner);

    final action = await MatchResultDialog.show(context, winner: winner);
    if (action == MatchResultDialogActionType.continueGame) {
      final match = gameplayCubit.createMatch();
      matchCubit.setNewMatch(match);
    } else if (action == MatchResultDialogActionType.viewStatistics) {
      context.replaceRoute(LeaderboardRoute());
    } else if (action == MatchResultDialogActionType.finish) {
      // Handle finish action
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Tekan tombol di bawah\nuntuk menentukan pemenang',
          style: BdTStyles.s12w500,
          textAlign: TextAlign.center,
        ),
        Gap(16),
        Row(
          children: [
            Expanded(
              child: BdInkWell(
                onTap: () {
                  _submitMatchResult(context, winner: TeamEnum.red);
                },
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(color: BdColors.red),
                child: Center(
                  child: Text(
                    'Merah Menang',
                    style: BdTStyles.s16w700.copyWith(color: BdColors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: BdInkWell(
                onTap: () {
                  _submitMatchResult(context, winner: TeamEnum.blue);
                },
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(color: BdColors.blue),
                child: Center(
                  child: Text(
                    'Biru Menang',
                    style: BdTStyles.s16w700.copyWith(color: BdColors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
