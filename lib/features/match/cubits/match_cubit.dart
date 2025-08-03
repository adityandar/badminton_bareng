import 'package:badmintoon/core/core.dart';
import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';

import 'match_state.dart';

class MatchCubit extends Cubit<MatchState> {
  MatchCubit() : super(MatchState());

  void createMatch({
    required int index,
    required List<PlayerEntity> players,
    required GameMode gameMode,
    required MatchType matchType,
  }) {
    final match = getIt<GameplayUsecase>().createMatch(
      index: index,
      players: players,
      gameMode: gameMode,
      matchType: matchType,
    );
    emit(state.copyWith(match: match));
  }

  void useMatch(MatchEntity match) {
    emit(state.copyWith(match: match));
  }
}
