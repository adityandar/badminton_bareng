import 'package:badminton_bareng/domain/domain.dart';
import 'package:badminton_bareng/utils/utils.dart';

class GameplaySessionUsecase {
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
