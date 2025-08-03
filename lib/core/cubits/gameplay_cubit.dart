import 'package:badmintoon/core/service_locator/bd_service_locator.dart';
import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';

import 'gameplay_state.dart';

class GameplayCubit extends HydratedCubit<GameplayState> {
  GameplayCubit() : super(GameplayState());

  void createSession({
    required List<String> playerNames,
    required String sessionName,
    required MatchType matchType,
    required GameMode gameMode,
  }) {
    final players =
        playerNames.map(getIt<PlayerUsecase>().createPlayer).toList();

    final session = getIt<GameplaySessionUsecase>().createSession(
      players: players,
      name: sessionName,
      matchType: matchType,
      gameMode: gameMode,
    );
    emit(state.copyWith(activeSession: session));
  }

  MatchEntity createMatch() {
    final currentSession = state.activeSession;
    if (currentSession == null) {
      throw Exception('No active gameplay session found');
    }

    final activeMatch = currentSession.activeMatch;
    if (activeMatch != null) {
      return activeMatch;
    }

    final match = getIt<MatchUsecase>().createMatch(
      index: currentSession.matches.length,
      players: currentSession.players,
      gameMode: currentSession.gameMode,
      matchType: currentSession.matchType,
      lastMatch: currentSession.lastCompletedMatch,
    );

    final updatedMatches = [...currentSession.matches, match];

    emit(
      state.copyWith(
        activeSession: currentSession.copyWith(matches: updatedMatches),
      ),
    );

    return match;
  }

  void completeMatch(MatchEntity completedMatch) {
    final currentSession = state.activeSession;

    if (currentSession == null) {
      throw Exception('No active gameplay session found');
    }
    if (completedMatch.winner == null) {
      throw Exception('Match must have a winner to be completed');
    }

    final updatedPlayers = getIt<PlayerUsecase>().updatePlayersDataAfterMatch(
      playerDatabase: currentSession.players,
      redPlayerIds: completedMatch.redPlayerIds,
      bluePlayerIds: completedMatch.bluePlayerIds,
      winner: completedMatch.winner!,
    );

    final updatedMatches = getIt<MatchUsecase>().updateMatchesDataAfterMatch(
      matchDatabase: currentSession.matches,
      completedMatch: completedMatch,
    );

    emit(
      state.copyWith(
        activeSession: currentSession.copyWith(
          players: updatedPlayers,
          matches: updatedMatches,
        ),
      ),
    );
  }

  @override
  GameplayState? fromJson(Map<String, dynamic> json) =>
      GameplayState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(GameplayState state) => state.toJson();

  @override
  String get storagePrefix => 'GameplayCubit';
}
