import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';

part 'gameplay_state.freezed.dart';
part 'gameplay_state.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class GameplayState with _$GameplayState {
  GameplayState({this.activeSession});

  @override
  final GameplaySessionEntity? activeSession;

  factory GameplayState.fromJson(Map<String, dynamic> json) =>
      _$GameplayStateFromJson(json);

  Map<String, dynamic> toJson() => _$GameplayStateToJson(this);
}
