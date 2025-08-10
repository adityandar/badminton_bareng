import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:badminton_bareng/domain/domain.dart';
import 'package:badminton_bareng/shared/shared.dart';
import 'package:flutter/material.dart';

import 'cubits/index.dart';
import 'views/index.dart';

@RoutePage()
class InputPlayerPage extends StatelessWidget {
  const InputPlayerPage({
    super.key,
    required this.gameplayName,
    required this.matchType,
    required this.gameMode,
  });

  final String gameplayName;
  final MatchType matchType;
  final GameMode gameMode;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InputPlayerCubit(),
      child: Scaffold(
        appBar: BdAppBar(title: 'Isi Daftar Pemain'),
        bottomNavigationBar: InputPlayerBottomView(
          gameplayName: gameplayName,
          matchType: matchType,
          gameMode: gameMode,
        ),
        body: InputPlayerListView(),
      ),
    );
  }
}
