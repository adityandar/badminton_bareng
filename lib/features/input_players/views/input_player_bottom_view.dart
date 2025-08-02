import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/routers/index.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

import '../cubits/index.dart';

class InputPlayerBottomView extends StatefulWidget {
  const InputPlayerBottomView({super.key});

  @override
  State<InputPlayerBottomView> createState() => _InputPlayerBottomViewState();
}

class _InputPlayerBottomViewState extends State<InputPlayerBottomView> {
  final textEditingController = TextEditingController();

  void _addPlayerName() {
    if (textEditingController.text.isEmpty) {
      toastification.show(
        context: context,
        title: Text('Nama pemain tidak boleh kosong'),
        autoCloseDuration: const Duration(seconds: 5),
        type: ToastificationType.error,
      );

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
                    child: TextFormField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                        hintText: 'Nama Pemain',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
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
                    toastification.show(
                      context: context,
                      title: Text('Jumlah pemain minimal 2 orang'),
                      autoCloseDuration: const Duration(seconds: 5),
                      type: ToastificationType.error,
                    );
                    return;
                  }

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
