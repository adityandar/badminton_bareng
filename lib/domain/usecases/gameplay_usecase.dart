import 'package:badmintoon/domain/domain.dart';
import 'package:badmintoon/utils/utils.dart';

class GameplayUsecase {
  PlayerEntity createPlayer(String name) {
    return PlayerEntity(
      id: StringHelper.generateUUID(),
      name: name,
      matchesPlayed: 0,
      wins: 0,
      losses: 0,
    );
  }

  MatchEntity createMatch({
    required int index,
    required List<PlayerEntity> players,
    required GameMode gameMode,
    required MatchType matchType,
  }) {
    return MatchEntity(
      id: StringHelper.generateUUID(),
      redPlayerIds: players.map((e) => e.id).toList(),
      bluePlayerIds: [],
      winner: null,
      isCompleted: false,
      index: index,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }

  GameplaySessionEntity createSession({
    required List<PlayerEntity> players,
    required String name,
    required GameMode gameMode,
    required MatchType matchType,
  }) {
    return GameplaySessionEntity(
      sessionId: StringHelper.generateUUID(),
      name: name,
      gameMode: gameMode,
      matchType: matchType,
      state: GameplaySessionState.ongoing,
      players: players,
      matches: [],
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}
