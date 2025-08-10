import 'package:badminton_bareng/core/core.dart';
import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:badminton_bareng/domain/domain.dart';
import 'package:flutter/material.dart';

import 'index.dart';

class LeaderboardBottomView extends StatelessWidget {
  const LeaderboardBottomView({super.key, required this.screenshotController});

  final ScreenshotController screenshotController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameplayCubit, GameplayState>(
      builder: (context, state) {
        switch (state.activeSession?.state) {
          case GameplaySessionState.finished:
            return FinishedBottomView(
              screenshotController: screenshotController,
            );
          case GameplaySessionState.ongoing:
            return OngoingBottomView();
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
