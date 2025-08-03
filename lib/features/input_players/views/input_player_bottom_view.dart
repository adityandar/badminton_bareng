import 'package:badmintoon/core/core.dart';
import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';
import 'package:badmintoon/routers/index.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

import '../cubits/index.dart';

class InputPlayerBottomView extends StatefulWidget {
  const InputPlayerBottomView({
    super.key,
    required this.gameplayName,
    required this.matchType,
  });

  final String gameplayName;
  final MatchType matchType;

  @override
  State<InputPlayerBottomView> createState() => _InputPlayerBottomViewState();
}

class _InputPlayerBottomViewState extends State<InputPlayerBottomView> {
  final textEditingController = TextEditingController();

  void _addPlayerName() {
    if (textEditingController.text.isEmpty) {
      BdToast.error(context, title: 'Nama pemain tidak boleh kosong.');

      return;
    }

    context.read<InputPlayerCubit>().addName(textEditingController.text);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InputPlayerCubit, InputPlayerState>(
      listenWhen:
          (previous, current) =>
              previous.triggerResetInputName != current.triggerResetInputName,
      listener: (context, state) {
        if (state.triggerResetInputName) {
          textEditingController.clear();
        }
      },
      builder: (context, state) {
        final playerAmount = state.playerNames.length;

        return Padding(
          padding: EdgeInsets.fromLTRB(
            16,
            24,
            16,
            MediaQuery.of(context).viewPadding.bottom + 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: BdTextFormField(
                      controller: textEditingController,
                      hintText: 'Nama Pemain',
                      onFieldSubmitted: (_) => _addPlayerName(),
                    ),
                  ),
                  Gap(16),
                  IconButton.filled(
                    onPressed: _addPlayerName,
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              Gap(16),
              BdElevatedButton(
                minWidth: MediaQuery.of(context).size.width,
                title: 'Mulai Pertandingan ($playerAmount Pemain)',
                onPressed: () {
                  if (playerAmount < 2) {
                    BdToast.error(
                      context,
                      title: 'Jumlah pemain minimal 2 orang',
                    );

                    return;
                  }
                  context.read<GameplayCubit>().createSession(
                    playerNames: state.playerNames,
                    sessionName: widget.gameplayName,
                    matchType: widget.matchType,
                    gameMode: GameMode.single,
                  );

                  context.replaceRoute(MatchRoute());
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
