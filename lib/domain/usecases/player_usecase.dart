import 'package:badmintoon/domain/domain.dart';
import 'package:badmintoon/utils/utils.dart';

class PlayerUsecase {
  PlayerEntity createPlayer(String name) {
    return PlayerEntity(
      id: StringHelper.generateUUID(),
      name: name,
      matchesPlayed: 0,
      wins: 0,
      losses: 0,
    );
  }

  List<PlayerEntity> updatePlayersDataAfterMatch({
    required List<PlayerEntity> playerDatabase,
    required List<String> redPlayerIds,
    required List<String> bluePlayerIds,
    required TeamEnum winner,
  }) {
    final winnerPlayerIds = switch (winner) {
      TeamEnum.red => redPlayerIds,
      TeamEnum.blue => bluePlayerIds,
    };
    final jointPlayerIds = [...redPlayerIds, ...bluePlayerIds];

    // update players win/losses
    return playerDatabase.map((player) {
      if (!jointPlayerIds.contains(player.id)) {
        return player; // No change for players not in the match
      }

      final isWinner = winnerPlayerIds.contains(player.id);

      if (isWinner) {
        return player.copyWith(
          matchesPlayed: player.matchesPlayed + 1,
          wins: player.wins + 1,
        );
      } else {
        return player.copyWith(
          matchesPlayed: player.matchesPlayed + 1,
          losses: player.losses + 1,
        );
      }
    }).toList();
  }

  List<PlayerEntity> getTopPlayers({
    required List<PlayerEntity> playerDatabase,
    required int? limit,
  }) {
    // Sort players by wins and then by matches played
    final sortedPlayers = List<PlayerEntity>.from(playerDatabase)..sort((a, b) {
      final winComparison = b.wins.compareTo(a.wins);
      if (winComparison != 0) return winComparison;
      return b.matchesPlayed.compareTo(a.matchesPlayed);
    });

    if (limit == null || limit <= 0) {
      return sortedPlayers; // Return all players if no limit is set
    }

    // Return the top players up to the specified limit
    return sortedPlayers.take(limit).toList();
  }
}
