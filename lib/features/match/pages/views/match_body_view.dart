import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

import 'index.dart';

class MatchBodyView extends StatelessWidget {
  const MatchBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(blurRadius: 6, color: Colors.black.withAlpha(15)),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: MatchTeamSideWidget.left(
                  teamName: 'Team Merah',
                  teamColor: BdColors.red,
                  playerNames: ['Player 1', 'Player 2'],
                ),
              ),
              Expanded(
                child: MatchTeamSideWidget.right(
                  teamName: 'Team Biru',
                  teamColor: BdColors.blue,
                  playerNames: ['Player 3', 'Player 4'],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
