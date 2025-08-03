import 'package:badmintoon/core/core.dart';
import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../cubits/index.dart';

class MatchListener extends BlocListener<MatchCubit, MatchState> {
  const MatchListener({super.key, required super.child})
    : super(listenWhen: _listenWhen, listener: _listen);

  static bool _listenWhen(MatchState previous, MatchState current) {
    return previous.match == null && current.match != null;
  }

  static void _listen(BuildContext context, MatchState state) {
    if (state.match != null) {
      context.read<GameplayCubit>().upsertMatch(state.match!);
    }
  }
}
