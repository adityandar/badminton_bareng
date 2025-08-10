import 'package:badminton_bareng/dependencies/dependencies.dart';
import 'package:badminton_bareng/domain/domain.dart';

import 'create_session_state.dart';

class CreateSessionCubit extends Cubit<CreateSessionState> {
  CreateSessionCubit() : super(CreateSessionState.initial());

  void onNameChanged(String name) {
    emit(state.copyWith(title: name));
  }

  void onMatchTypeChanged(MatchType matchType) {
    emit(state.copyWith(matchType: matchType));
  }

  void onGameModeChanged(GameMode gameMode) {
    emit(state.copyWith(gameMode: gameMode));
  }

  void reset() {
    emit(CreateSessionState.initial());
  }
}
