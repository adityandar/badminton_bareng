import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

import 'index.dart';

@RoutePage()
class MatchPage extends StatelessWidget {
  const MatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BdAppBar(title: 'Match ke-X'),
      bottomNavigationBar: MatchBottomView(),
      body: MatchBodyView(),
    );
  }
}
