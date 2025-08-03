// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gameplay_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameplayState _$GameplayStateFromJson(Map<String, dynamic> json) =>
    GameplayState(
      activeSession:
          json['activeSession'] == null
              ? null
              : GameplaySessionEntity.fromJson(
                json['activeSession'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$GameplayStateToJson(GameplayState instance) =>
    <String, dynamic>{'activeSession': instance.activeSession?.toJson()};
