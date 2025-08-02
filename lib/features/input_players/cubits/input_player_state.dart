import 'package:badmintoon/dependencies/dependencies.dart';

part 'input_player_state.freezed.dart';

@freezed
class InputPlayerState with _$InputPlayerState {
  factory InputPlayerState({
    required List<String> names,
    required bool triggerResetInputName,
  }) = _InputPlayerState;

  factory InputPlayerState.initial() {
    return InputPlayerState(names: [], triggerResetInputName: false);
  }
}
