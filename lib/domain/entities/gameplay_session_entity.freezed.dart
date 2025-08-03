// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gameplay_session_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameplaySessionEntity {

 String? get sessionId; String get name; GameplaySessionState get state; GameMode get gameMode; MatchType get matchType; List<PlayerEntity> get players; List<MatchEntity> get matches; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of GameplaySessionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameplaySessionEntityCopyWith<GameplaySessionEntity> get copyWith => _$GameplaySessionEntityCopyWithImpl<GameplaySessionEntity>(this as GameplaySessionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameplaySessionEntity&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.name, name) || other.name == name)&&(identical(other.state, state) || other.state == state)&&(identical(other.gameMode, gameMode) || other.gameMode == gameMode)&&(identical(other.matchType, matchType) || other.matchType == matchType)&&const DeepCollectionEquality().equals(other.players, players)&&const DeepCollectionEquality().equals(other.matches, matches)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId,name,state,gameMode,matchType,const DeepCollectionEquality().hash(players),const DeepCollectionEquality().hash(matches),createdAt,updatedAt);

@override
String toString() {
  return 'GameplaySessionEntity(sessionId: $sessionId, name: $name, state: $state, gameMode: $gameMode, matchType: $matchType, players: $players, matches: $matches, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $GameplaySessionEntityCopyWith<$Res>  {
  factory $GameplaySessionEntityCopyWith(GameplaySessionEntity value, $Res Function(GameplaySessionEntity) _then) = _$GameplaySessionEntityCopyWithImpl;
@useResult
$Res call({
 String? sessionId, String name, GameplaySessionState state, GameMode gameMode, MatchType matchType, List<PlayerEntity> players, List<MatchEntity> matches, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$GameplaySessionEntityCopyWithImpl<$Res>
    implements $GameplaySessionEntityCopyWith<$Res> {
  _$GameplaySessionEntityCopyWithImpl(this._self, this._then);

  final GameplaySessionEntity _self;
  final $Res Function(GameplaySessionEntity) _then;

/// Create a copy of GameplaySessionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = freezed,Object? name = null,Object? state = null,Object? gameMode = null,Object? matchType = null,Object? players = null,Object? matches = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(GameplaySessionEntity(
sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as GameplaySessionState,gameMode: null == gameMode ? _self.gameMode : gameMode // ignore: cast_nullable_to_non_nullable
as GameMode,matchType: null == matchType ? _self.matchType : matchType // ignore: cast_nullable_to_non_nullable
as MatchType,players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<PlayerEntity>,matches: null == matches ? _self.matches : matches // ignore: cast_nullable_to_non_nullable
as List<MatchEntity>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [GameplaySessionEntity].
extension GameplaySessionEntityPatterns on GameplaySessionEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}

// dart format on
