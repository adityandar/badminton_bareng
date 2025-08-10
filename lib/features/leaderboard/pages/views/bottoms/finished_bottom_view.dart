// ignore_for_file: use_build_context_synchronously

import 'package:badmintoon/core/core.dart';
import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/routers/index.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

import '../../../cubits/index.dart';

class FinishedBottomView extends StatelessWidget {
  const FinishedBottomView({super.key, required this.screenshotController});

  final ScreenshotController screenshotController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: BdElevatedButton(
              minHeight: 48,
              title: 'Kembali ke Menu Utama',
              onPressed: () {
                context.read<GameplayCubit>().resetSession();
                context.replaceRoute(MainRoute());
              },
            ),
          ),
          Gap(8),
          Expanded(
            child: BlocBuilder<LeaderboardCubit, LeaderboardState>(
              builder: (context, state) {
                return BdOutlinedButton(
                  minHeight: 48,
                  isLoading: state.isScreenshotLoading,
                  isEnabled: !state.isDataLoading,
                  onPressed:
                      () => context
                          .read<LeaderboardCubit>()
                          .screenshotAndDownload(context, screenshotController),
                  title: 'Share ke Instagram Story',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
