import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

import 'cubits/index.dart';
import 'views/index.dart';

@RoutePage()
class InputPlayerPage extends StatelessWidget {
  const InputPlayerPage({
    super.key,
    required this.gameplayName,
    required this.matchType,
  });

  final String gameplayName;
  final MatchType matchType;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InputPlayerCubit(),
      child: Scaffold(
        appBar: BdAppBar(title: 'Isi Daftar Pemain'),
        bottomNavigationBar: InputPlayerBottomView(
          gameplayName: gameplayName,
          matchType: matchType,
        ),
        body: InputPlayerListView(),
      ),
    );
  }
}
