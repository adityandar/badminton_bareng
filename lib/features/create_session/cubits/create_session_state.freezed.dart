// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_session_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateSessionState {

 String get title; MatchType? get matchType; GameMode? get gameMode;
/// Create a copy of CreateSessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSessionStateCopyWith<CreateSessionState> get copyWith => _$CreateSessionStateCopyWithImpl<CreateSessionState>(this as CreateSessionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSessionState&&(identical(other.title, title) || other.title == title)&&(identical(other.matchType, matchType) || other.matchType == matchType)&&(identical(other.gameMode, gameMode) || other.gameMode == gameMode));
}


@override
int get hashCode => Object.hash(runtimeType,title,matchType,gameMode);

@override
String toString() {
  return 'CreateSessionState(title: $title, matchType: $matchType, gameMode: $gameMode)';
}


}

/// @nodoc
abstract mixin class $CreateSessionStateCopyWith<$Res>  {
  factory $CreateSessionStateCopyWith(CreateSessionState value, $Res Function(CreateSessionState) _then) = _$CreateSessionStateCopyWithImpl;
@useResult
$Res call({
 String title, MatchType? matchType, GameMode? gameMode
});




}
/// @nodoc
class _$CreateSessionStateCopyWithImpl<$Res>
    implements $CreateSessionStateCopyWith<$Res> {
  _$CreateSessionStateCopyWithImpl(this._self, this._then);

  final CreateSessionState _self;
  final $Res Function(CreateSessionState) _then;

/// Create a copy of CreateSessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? matchType = freezed,Object? gameMode = freezed,}) {
  return _then(CreateSessionState(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,matchType: freezed == matchType ? _self.matchType : matchType // ignore: cast_nullable_to_non_nullable
as MatchType?,gameMode: freezed == gameMode ? _self.gameMode : gameMode // ignore: cast_nullable_to_non_nullable
as GameMode?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateSessionState].
extension CreateSessionStatePatterns on CreateSessionState {
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
