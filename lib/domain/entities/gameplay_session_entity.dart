import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';

part 'gameplay_session_entity.freezed.dart';
part 'gameplay_session_entity.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class GameplaySessionEntity with _$GameplaySessionEntity {
  GameplaySessionEntity({
    required this.sessionId,
    required this.name,
    required this.state,
    required this.gameMode,
    required this.matchType,
    required this.players,
    required this.matches,
    required this.createdAt,
    required this.updatedAt,
  });

  MatchEntity? get activeMatch =>
      matches.firstWhereOrNull((match) => !match.isCompleted);
  MatchEntity? get lastCompletedMatch =>
      matches.where((match) => match.isCompleted).lastOrNull;

  @override
  final String? sessionId;
  @override
  final String name;
  @override
  final GameplaySessionState state;
  @override
  final GameMode gameMode;
  @override
  final MatchType matchType;
  @override
  final List<PlayerEntity> players;
  @override
  final List<MatchEntity> matches;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory GameplaySessionEntity.fromJson(Map<String, dynamic> json) =>
      _$GameplaySessionEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GameplaySessionEntityToJson(this);
}
