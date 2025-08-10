import 'package:badminton_bareng/core/core.dart';
import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:badminton_bareng/routers/index.dart';
import 'package:badminton_bareng/shared/shared.dart';
import 'package:flutter/material.dart';

class OngoingBottomView extends StatelessWidget {
  const OngoingBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: BdElevatedButton(
              minHeight: 48,
              title: 'Lanjut Main',
              onPressed: () {
                context.replaceRoute(MatchRoute());
              },
            ),
          ),
          Gap(8),
          Expanded(
            child: BdOutlinedButton(
              minHeight: 48,
              onPressed: () {
                context.read<GameplayCubit>().finishSession();
              },
              title: 'Hentikan Sesi',
            ),
          ),
        ],
      ),
    );
  }
}
