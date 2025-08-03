import 'package:badmintoon/core/core.dart';
import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/routers/index.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:badmintoon/utils/utils.dart';
import 'package:flutter/material.dart';

import '../cubits/index.dart';
import 'index.dart';

@RoutePage()
class MatchPage extends StatefulWidget {
  const MatchPage({super.key});

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  late final MatchCubit matchCubit;

  @override
  void initState() {
    super.initState();
    matchCubit = MatchCubit();
    final currentSession = context.read<GameplayCubit>().state.activeSession;

    if (currentSession == null) {
      if (mounted) {
        BdToast.error(
          context,
          title: 'Tidak ada sesi permainan aktif',
          description: 'Kembali ke menu utama',
        );
        context.popUntilRootThenReplaceRoute(MainRoute());
      }

      return;
    }
    final activeMatch = currentSession.activeMatch;

    if (activeMatch != null) {
      matchCubit.useMatch(activeMatch);
    } else {
      matchCubit.createMatch(
        index: currentSession.matches.length,
        players: currentSession.players,
        gameMode: currentSession.gameMode,
        matchType: currentSession.matchType,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: matchCubit,
      child: Scaffold(
        appBar: BdAppBar(title: 'Pertandingan Berlangsung'),
        bottomNavigationBar: MatchBottomView(),
        body: MatchBodyView(),
      ),
    );
  }
}
