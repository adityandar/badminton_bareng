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

  void upsertMatch(MatchEntity match) {
    final currentSession = state.activeSession;
    if (currentSession == null) {
      return;
    }

    // When updating the match, we remove the old match and add the updated one.
    // We reorder the matches based on their index to maintain the order.
    final updatedMatches =
        List<MatchEntity>.from(currentSession.matches)
          ..removeWhere((m) => m.id == match.id)
          ..add(match)
          ..sort((a, b) => a.index.compareTo(b.index));

    final updatedSession = currentSession.copyWith(matches: updatedMatches);
    emit(state.copyWith(activeSession: updatedSession));
  }

  @override
  GameplayState? fromJson(Map<String, dynamic> json) =>
      GameplayState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(GameplayState state) => state.toJson();

  @override
  String get storagePrefix => 'GameplayCubit';
}
