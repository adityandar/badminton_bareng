import 'package:badminton_bareng/dependencies/dependencies.dart';

import 'input_player_state.dart';

class InputPlayerCubit extends Cubit<InputPlayerState> {
  InputPlayerCubit() : super(InputPlayerState.initial());

  void addName(String name) {
    final currentPlayerNames = List<String>.from(state.playerNames);
    currentPlayerNames.add(name);
    emit(state.copyWith(playerNames: currentPlayerNames));
    _triggerResetInputName();
  }

  void removeName(String name) {
    final currentPlayerNames = List<String>.from(state.playerNames);
    currentPlayerNames.remove(name);
    emit(state.copyWith(playerNames: currentPlayerNames));
  }

  void _triggerResetInputName() {
    emit(state.copyWith(triggerResetInputName: true));
    emit(state.copyWith(triggerResetInputName: false));
  }
}
