import 'package:badminton_bareng/core/core.dart';
import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:badminton_bareng/routers/index.dart';
import 'package:badminton_bareng/shared/shared.dart';
import 'package:flutter/material.dart';

class MainBottomView extends StatelessWidget {
  const MainBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameplayCubit, GameplayState>(
      builder: (context, state) {
        final activeSession = state.activeSession;

        return Padding(
          padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              BdElevatedButton(
                onPressed: () => context.pushRoute(CreateSessionRoute()),
                title: 'Mulai Bermain',
                backgroundColor: BdColors.primary,
                foregroundColor: Colors.white,
                minWidth: double.infinity,
                minHeight: 48,
                textStyle: BdTStyles.s16w700.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
              if (activeSession != null) ...[
                Gap(16),
                BdElevatedButton(
                  onPressed: () => context.pushRoute(MatchRoute()),
                  title: 'Lanjutkan Permainan',
                  backgroundColor: BdColors.blue,
                  foregroundColor: Colors.white,
                  minWidth: double.infinity,
                  minHeight: 48,
                  textStyle: BdTStyles.s16w700.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
