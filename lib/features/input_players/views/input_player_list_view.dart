import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:badmintoon/utils/utils.dart';
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
            final initial = StringHelper.initial(name, 2);

            return DbDismissible(
              key: Key(name),
              onDismissed: (direction) {
                context.read<InputPlayerCubit>().removeName(name);
              },
              child: ListTile(
                title: Text(name.toTitleCase(), style: BdTStyles.s16w400),
                leading: Container(
                  width: 24,
                  height: 24,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: BdColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    initial,
                    style: BdTStyles.s10w600.copyWith(color: Colors.white),
                  ),
                ),
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
