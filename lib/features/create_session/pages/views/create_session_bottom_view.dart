import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:badminton_bareng/routers/index.dart';
import 'package:badminton_bareng/shared/shared.dart';
import 'package:flutter/material.dart';

import '../../cubits/index.dart';

class CreateSessionBottomView extends StatelessWidget {
  const CreateSessionBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BdElevatedButton(
        minHeight: 48,
        textStyle: BdTStyles.s16w700,
        onPressed: () {
          final state = context.read<CreateSessionCubit>().state;

          if (state.title.isEmpty) {
            BdToast.error(context, title: 'Nama sesi tidak boleh kosong.');

            return;
          }

          if (state.gameMode == null) {
            BdToast.error(context, title: 'Mode permainan belum dipilih.');

            return;
          }

          if (state.matchType == null) {
            BdToast.error(
              context,
              title: 'Tipe random pertandingan belum dipilih.',
            );
            return;
          }

          context.replaceRoute(
            InputPlayerRoute(
              gameplayName: state.title,
              matchType: state.matchType!,
              gameMode: state.gameMode!,
            ),
          );
        },
        title: 'Mulai Permainan',
      ),
    );
  }
}
