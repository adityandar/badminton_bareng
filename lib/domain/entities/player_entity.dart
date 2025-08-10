import 'package:badminton_bareng/dependencies/dependencies.dart';

part 'player_entity.freezed.dart';
part 'player_entity.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class PlayerEntity with _$PlayerEntity {
  PlayerEntity({
    required this.id,
    required this.name,
    required this.matchesPlayed,
    required this.wins,
    required this.losses,
  });

  factory PlayerEntity.mock() => PlayerEntity(
    id: '',
    name: 'Mock Player',
    matchesPlayed: 0,
    wins: 0,
    losses: 0,
  );

  @override
  final String id;
  @override
  final String name;
  @override
  final int matchesPlayed;
  @override
  final int wins;
  @override
  final int losses;

  factory PlayerEntity.fromJson(Map<String, dynamic> json) =>
      _$PlayerEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerEntityToJson(this);
}
