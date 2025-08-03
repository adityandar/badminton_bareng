import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:badmintoon/domain/domain.dart';

part 'match_entity.freezed.dart';
part 'match_entity.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class MatchEntity with _$MatchEntity {
  MatchEntity({
    required this.id,
    required this.index,
    required this.redPlayerIds,
    required this.bluePlayerIds,
    required this.winner,
    required this.isCompleted,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  final String id;
  @override
  final int index;
  @override
  final List<String> redPlayerIds;
  @override
  final List<String> bluePlayerIds;
  @override
  final TeamEnum? winner;
  @override
  final bool isCompleted;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory MatchEntity.fromJson(Map<String, dynamic> json) =>
      _$MatchEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MatchEntityToJson(this);
}
