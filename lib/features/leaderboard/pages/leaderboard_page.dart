import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../cubits/leaderboard_cubit.dart';
import 'views/index.dart';

@RoutePage()
class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({super.key});

  @override
  State<LeaderboardPage> createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  final screenshotController = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LeaderboardCubit(),
      child: Scaffold(
        body: Stack(
          children: [
            LeaderboardScreenshotView(
              screenshotController: screenshotController,
            ),
            LeaderboardBlocBuilderView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: LeaderboardBottomView(
                screenshotController: screenshotController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
