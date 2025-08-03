import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/routers/index.dart';
import 'package:badmintoon/shared/shared.dart';
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
        onPressed: () {
          final state = context.read<CreateSessionCubit>().state;

          if (state.title.isEmpty) {
            BdToast.error(context, title: 'Nama turnamen tidak boleh kosong.');

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
            ),
          );
        },
        title: 'Buat Sesi',
      ),
    );
  }
}
