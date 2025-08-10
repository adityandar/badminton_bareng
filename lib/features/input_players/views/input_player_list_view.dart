import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:badminton_bareng/shared/shared.dart';
import 'package:badminton_bareng/utils/utils.dart';
import 'package:flutter/material.dart';

import '../cubits/index.dart';

class InputPlayerListView extends StatelessWidget {
  const InputPlayerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InputPlayerCubit, InputPlayerState>(
      builder: (context, state) {
        final playerNames = state.playerNames;

        if (playerNames.isEmpty) {
          return Center(
            child: Text(
              'Daftar pemain masih kosong\nIsi terlebih dahulu',
              textAlign: TextAlign.center,
              style: BdTStyles.s14w500,
            ),
          );
        }

        return ListView.separated(
          itemCount: playerNames.length,
          itemBuilder: (context, index) {
            final name = playerNames[index];

            return DbDismissible(
              key: Key(name),
              onDismissed: (direction) {
                context.read<InputPlayerCubit>().removeName(name);
              },
              child: ListTile(
                title: Text(name.toTitleCase(), style: BdTStyles.s16w400),
                leading: BdCircleAvatar(name: name, size: 24),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Container(height: 1, color: Colors.grey);
          },
        );
      },
    );
  }
}
