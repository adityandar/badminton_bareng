import 'package:badminton_bareng/domain/domain.dart';
import 'package:badminton_bareng/utils/utils.dart';

class MatchUsecase {
  List<MatchEntity> updateMatchesDataAfterMatch({
    required List<MatchEntity> matchDatabase,
    required MatchEntity completedMatch,
  }) {
    return matchDatabase.map((match) {
      if (match.id == completedMatch.id) {
        return completedMatch;
      }

      return match;
    }).toList();
  }

  MatchEntity createMatch({
    required int index,
    required List<PlayerEntity> players,
    required GameMode gameMode,
    required MatchType matchType,
    required MatchEntity? lastMatch,
  }) {
    final playersPerTeam = gameMode.playersPerTeam;

    final redPlayers = <PlayerEntity>[];
    final bluePlayers = <PlayerEntity>[];

    // for the first match, we always generate random spin teams
    // to ensure randomness in the first match
    if (index == 0) {
      _generateRandomSpinTeams(
        playersPerTeam: playersPerTeam,
        players: players,
        redPlayers: redPlayers,
        bluePlayers: bluePlayers,
      );
    } else {
      _generateTeamsBasedOnMatchType(
        index: index,
        players: players,
        gameMode: gameMode,
        matchType: matchType,
        lastMatch: lastMatch,
        playersPerTeam: playersPerTeam,
        redPlayers: redPlayers,
        bluePlayers: bluePlayers,
      );
    }

    return MatchEntity(
      id: StringHelper.generateUUID(),
      redPlayerIds: redPlayers.map((e) => e.id).toList(),
      bluePlayerIds: bluePlayers.map((e) => e.id).toList(),
      winner: null,
      isCompleted: false,
      index: index,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }

  void _generateTeamsBasedOnMatchType({
    required int index,
    required List<PlayerEntity> players,
    required GameMode gameMode,
    required MatchType matchType,
    required MatchEntity? lastMatch,
    required int playersPerTeam,
    required List<PlayerEntity> redPlayers,
    required List<PlayerEntity> bluePlayers,
  }) {
    switch (matchType) {
      case MatchType.randomSpin:
        _generateRandomSpinTeams(
          playersPerTeam: playersPerTeam,
          players: players,
          redPlayers: redPlayers,
          bluePlayers: bluePlayers,
        );
        break;
      case MatchType.fairPlay:
        _generateFairPlayTeams(
          playersPerTeam: playersPerTeam,
          players: players,
          redPlayers: redPlayers,
          bluePlayers: bluePlayers,
        );
        break;
      case MatchType.winnerStay:
        if (lastMatch == null) {
          // If there is no last match, fallback to random spin
          _generateRandomSpinTeams(
            playersPerTeam: playersPerTeam,
            players: players,
            redPlayers: redPlayers,
            bluePlayers: bluePlayers,
          );
        } else {
          _generateWinnerStayTeams(
            playersPerTeam: playersPerTeam,
            lastMatch: lastMatch,
            players: players,
            redPlayers: redPlayers,
            bluePlayers: bluePlayers,
          );
        }
        break;
    }
  }

  void _generateRandomSpinTeams({
    required int playersPerTeam,
    required List<PlayerEntity> players,
    required List<PlayerEntity> redPlayers,
    required List<PlayerEntity> bluePlayers,
  }) {
    // shuffle from list players
    final shuffled = [...players]..shuffle();

    // take player for each team
    redPlayers.addAll(shuffled.take(playersPerTeam));
    bluePlayers.addAll(shuffled.skip(playersPerTeam).take(playersPerTeam));
  }

  void _generateFairPlayTeams({
    required int playersPerTeam,
    required List<PlayerEntity> players,
    required List<PlayerEntity> redPlayers,
    required List<PlayerEntity> bluePlayers,
  }) {
    // sort players by matches played by ASC order to get the least played first
    final sorted = [...players]
      ..sort((a, b) => a.matchesPlayed.compareTo(b.matchesPlayed));

    // get the first 2 * playersPerTeam players
    // to ensure we have enough players for both teams
    final selected = sorted.take(playersPerTeam * 2).toList();

    // shuffle selected players
    selected.shuffle();

    // take player for each team
    redPlayers.addAll(selected.take(playersPerTeam));
    bluePlayers.addAll(selected.skip(playersPerTeam).take(playersPerTeam));
  }

  void _generateWinnerStayTeams({
    required int playersPerTeam,
    required MatchEntity lastMatch,
    required List<PlayerEntity> players,
    required List<PlayerEntity> redPlayers,
    required List<PlayerEntity> bluePlayers,
  }) {
    final lastMatchWinner = lastMatch.winner;
    if (lastMatchWinner == null) {
      // If there is no winner, fallback to random spin
      _generateRandomSpinTeams(
        playersPerTeam: playersPerTeam,
        players: players,
        redPlayers: redPlayers,
        bluePlayers: bluePlayers,
      );

      return;
    }

    // Determine which team won the last match
    final stayIds = switch (lastMatchWinner) {
      TeamEnum.red => lastMatch.redPlayerIds,
      TeamEnum.blue => lastMatch.bluePlayerIds,
    };

    // Get the winner players who will stay
    final stayPlayers = players.where((p) => stayIds.contains(p.id)).toList();

    // Assign the winner team to their side
    switch (lastMatchWinner) {
      case TeamEnum.red:
        redPlayers.addAll(stayPlayers);
      case TeamEnum.blue:
        bluePlayers.addAll(stayPlayers);
    }

    // Find opponent candidates (exclude the staying players)
    final candidateOpponents =
        players.where((p) => !stayIds.contains(p.id)).toList()
          ..sort((a, b) => a.matchesPlayed.compareTo(b.matchesPlayed));

    // Pick the opponents based on the required number per team
    candidateOpponents.shuffle();
    final opponents = candidateOpponents.take(playersPerTeam).toList();

    // Assign the opponent team to the opposite side
    switch (lastMatchWinner) {
      case TeamEnum.red:
        bluePlayers.addAll(opponents);
      case TeamEnum.blue:
        redPlayers.addAll(opponents);
    }
  }
}
