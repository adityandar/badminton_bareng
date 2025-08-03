// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gameplay_session_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameplaySessionEntity _$GameplaySessionEntityFromJson(
  Map<String, dynamic> json,
) => GameplaySessionEntity(
  sessionId: json['sessionId'] as String?,
  name: json['name'] as String,
  state: $enumDecode(_$GameplaySessionStateEnumMap, json['state']),
  gameMode: $enumDecode(_$GameModeEnumMap, json['gameMode']),
  matchType: $enumDecode(_$MatchTypeEnumMap, json['matchType']),
  players:
      (json['players'] as List<dynamic>)
          .map((e) => PlayerEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
  matches:
      (json['matches'] as List<dynamic>)
          .map((e) => MatchEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$GameplaySessionEntityToJson(
  GameplaySessionEntity instance,
) => <String, dynamic>{
  'sessionId': instance.sessionId,
  'name': instance.name,
  'state': _$GameplaySessionStateEnumMap[instance.state]!,
  'gameMode': _$GameModeEnumMap[instance.gameMode]!,
  'matchType': _$MatchTypeEnumMap[instance.matchType]!,
  'players': instance.players.map((e) => e.toJson()).toList(),
  'matches': instance.matches.map((e) => e.toJson()).toList(),
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

const _$GameplaySessionStateEnumMap = {
  GameplaySessionState.ongoing: 'ongoing',
  GameplaySessionState.finished: 'finished',
};

const _$GameModeEnumMap = {
  GameMode.single: 'single',
  GameMode.double: 'double',
};

const _$MatchTypeEnumMap = {
  MatchType.randomSpin: 'randomSpin',
  MatchType.fairPlay: 'fairPlay',
  MatchType.winnerStay: 'winnerStay',
};
