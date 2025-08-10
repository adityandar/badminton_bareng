import 'package:badminton_bareng/core/core.dart';
import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../cubits/index.dart';

class MatchFinishedListener extends BlocListener<MatchCubit, MatchState> {
  const MatchFinishedListener({super.key, required super.child})
    : super(listenWhen: _listenWhen, listener: _listen);

  static bool _listenWhen(MatchState previous, MatchState current) {
    return previous.match?.winner == null && current.match?.winner != null;
  }

  static void _listen(BuildContext context, MatchState state) {
    if (state.match?.winner != null) {
      context.read<GameplayCubit>().completeMatch(state.match!);
    }
  }
}
