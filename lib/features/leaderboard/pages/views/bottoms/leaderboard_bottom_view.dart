import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../../cubits/index.dart';
import 'index.dart';

class LeaderboardBottomView extends StatelessWidget {
  const LeaderboardBottomView({super.key, required this.screenshotController});

  final ScreenshotController screenshotController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeaderboardCubit, LeaderboardState>(
      builder: (context, state) {
        if (state.isOngoing) {
          return OngoingBottomView();
        }

        return FinishedBottomView(screenshotController: screenshotController);
      },
    );
  }
}
