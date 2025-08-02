import 'package:badmintoon/dependencies/dependencies.dart';

part 'input_player_state.freezed.dart';

@freezed
class InputPlayerState with _$InputPlayerState {
  InputPlayerState({
    required this.playerNames,
    required this.triggerResetInputName,
  });

  factory InputPlayerState.initial() {
    return InputPlayerState(playerNames: [], triggerResetInputName: false);
  }

  @override
  final List<String> playerNames;
  @override
  final bool triggerResetInputName;
}
