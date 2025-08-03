import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';

import 'match_state.dart';

class MatchCubit extends Cubit<MatchState> {
  MatchCubit({required MatchEntity? match}) : super(MatchState(match: match));

  void setNewMatch(MatchEntity match) {
    emit(state.copyWith(match: match));
  }

  void completeMatch(TeamEnum winner) {
    emit(
      state.copyWith(
        match: state.match?.copyWith(
          winner: winner,
          isCompleted: true,
          updatedAt: DateTime.now(),
        ),
      ),
    );
  }
}
