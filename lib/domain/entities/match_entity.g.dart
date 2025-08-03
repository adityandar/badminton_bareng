// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchEntity _$MatchEntityFromJson(Map<String, dynamic> json) => MatchEntity(
  id: json['id'] as String,
  index: (json['index'] as num).toInt(),
  redPlayerIds:
      (json['redPlayerIds'] as List<dynamic>).map((e) => e as String).toList(),
  bluePlayerIds:
      (json['bluePlayerIds'] as List<dynamic>).map((e) => e as String).toList(),
  winner: $enumDecodeNullable(_$TeamEnumEnumMap, json['winner']),
  isCompleted: json['isCompleted'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$MatchEntityToJson(MatchEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'redPlayerIds': instance.redPlayerIds,
      'bluePlayerIds': instance.bluePlayerIds,
      'winner': _$TeamEnumEnumMap[instance.winner],
      'isCompleted': instance.isCompleted,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$TeamEnumEnumMap = {TeamEnum.red: 'red', TeamEnum.blue: 'blue'};
