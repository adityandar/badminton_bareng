import 'package:badmintoon/dependencies/dependencies.dart';

import 'input_player_state.dart';

class InputPlayerCubit extends Cubit<InputPlayerState> {
  InputPlayerCubit() : super(InputPlayerState.initial());

  void addName(String name) {
    final currentNames = List<String>.from(state.names);
    currentNames.add(name);
    emit(state.copyWith(names: currentNames));
    _triggerResetInputName();
  }

  void removeName(String name) {
    final currentNames = List<String>.from(state.names);
    currentNames.remove(name);
    emit(state.copyWith(names: currentNames));
  }

  void _triggerResetInputName() {
    emit(state.copyWith(triggerResetInputName: true));
    emit(state.copyWith(triggerResetInputName: false));
  }
}
