import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';

part 'create_session_state.freezed.dart';

@freezed
class CreateSessionState with _$CreateSessionState {
  CreateSessionState({
    required this.title,
    required this.matchType,
    required this.gameMode,
  });

  factory CreateSessionState.initial() =>
      CreateSessionState(title: '', matchType: null, gameMode: null);

  @override
  final String title;
  @override
  final MatchType? matchType;
  @override
  final GameMode? gameMode;
}
