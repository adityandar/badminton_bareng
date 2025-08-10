import 'package:badminton_bareng/core/core.dart';
import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../cubits/index.dart';
import 'index.dart';

class LeaderboardBlocBuilderView extends StatefulWidget {
  const LeaderboardBlocBuilderView({super.key});

  @override
  State<LeaderboardBlocBuilderView> createState() =>
      _LeaderboardBlocBuilderViewState();
}

class _LeaderboardBlocBuilderViewState
    extends State<LeaderboardBlocBuilderView> {
  @override
  void initState() {
    super.initState();
    if (mounted) {
      final gameplayCubit = context.read<GameplayCubit>();

      context.read<LeaderboardCubit>().onBuild(
        allPlayers: gameplayCubit.getTopPlayers(),
        isOngoing: gameplayCubit.state.activeSession?.state.isOngoing ?? false,
        sessionName: gameplayCubit.state.activeSession?.name ?? '',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeaderboardCubit, LeaderboardState>(
      builder: (context, state) {
        return LeaderboardBodyView(
          topThreePlayers: state.topThreePlayers,
          remainingPlayers: state.remainingPlayers,
          isOngoing: state.isOngoing,
        );
      },
    );
  }
}
