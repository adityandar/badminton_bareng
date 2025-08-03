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
    _onInit();
  }

  void _onInit() {
    if (mounted) {
      try {
        final gameplayCubit = context.read<GameplayCubit>();
        final match = gameplayCubit.createMatch();

        matchCubit = MatchCubit(match: match);
      } catch (e) {
        BdToast.error(
          context,
          title: 'Terdapat kesalahan',
          description: e.toString(),
        );
        context.popUntilRootThenReplaceRoute(MainRoute());
      }
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
