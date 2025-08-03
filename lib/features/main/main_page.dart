import 'package:badmintoon/core/core.dart';
import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/routers/index.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('Badmintoon App', style: BdTStyles.s16w700),
            ),
          ),
          BlocBuilder<GameplayCubit, GameplayState>(
            builder: (context, state) {
              final activeSession = state.activeSession;

              return SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BdElevatedButton(
                      onPressed: () => context.pushRoute(CreateSessionRoute()),
                      title: 'Mulai Bermain',
                      backgroundColor: BdColors.primary,
                      foregroundColor: Colors.white,
                    ),
                    if (activeSession != null) ...[
                      Gap(16),
                      BdElevatedButton(
                        onPressed: () => context.pushRoute(MatchRoute()),
                        title: 'Lanjutkan Permainan',
                        backgroundColor: BdColors.blue,
                        foregroundColor: Colors.white,
                      ),
                    ],
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
