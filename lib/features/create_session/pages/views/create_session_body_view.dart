import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

import '../../cubits/index.dart';
import 'widgets/index.dart';

class CreateSessionBodyView extends StatefulWidget {
  const CreateSessionBodyView({super.key});

  @override
  State<CreateSessionBodyView> createState() => _CreateSessionBodyViewState();
}

class _CreateSessionBodyViewState extends State<CreateSessionBodyView> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(() {
      context.read<CreateSessionCubit>().onNameChanged(
        textEditingController.text,
      );
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateSessionCubit, CreateSessionState>(
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Nama Turnamen', style: BdTStyles.s14w500),
              Gap(8),
              BdTextFormField(controller: textEditingController),
              Gap(24),
              Text('Mode Game', style: BdTStyles.s14w500),
              Gap(8),
              GameModeSwitcherWidget(
                selectedGameMode: state.gameMode,
                onGameModeChanged:
                    context.read<CreateSessionCubit>().onGameModeChanged,
              ),
              Gap(24),
              Text('Tipe Pertandingan', style: BdTStyles.s14w500),
              Gap(8),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  final matchType = MatchType.values[index];

                  return RandomTypeCardWidget(
                    matchType: matchType,
                    isSelected: matchType == state.matchType,
                    onTap:
                        () => context
                            .read<CreateSessionCubit>()
                            .onMatchTypeChanged(matchType),
                  );
                },
                separatorBuilder: (_, __) => Gap(16),
                itemCount: MatchType.values.length,
              ),
            ],
          ),
        );
      },
    );
  }
}
