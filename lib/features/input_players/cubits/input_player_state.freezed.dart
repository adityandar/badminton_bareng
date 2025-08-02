// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InputPlayerState {

 List<String> get playerNames; bool get triggerResetInputName;
/// Create a copy of InputPlayerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputPlayerStateCopyWith<InputPlayerState> get copyWith => _$InputPlayerStateCopyWithImpl<InputPlayerState>(this as InputPlayerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputPlayerState&&const DeepCollectionEquality().equals(other.playerNames, playerNames)&&(identical(other.triggerResetInputName, triggerResetInputName) || other.triggerResetInputName == triggerResetInputName));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(playerNames),triggerResetInputName);

@override
String toString() {
  return 'InputPlayerState(playerNames: $playerNames, triggerResetInputName: $triggerResetInputName)';
}


}

/// @nodoc
abstract mixin class $InputPlayerStateCopyWith<$Res>  {
  factory $InputPlayerStateCopyWith(InputPlayerState value, $Res Function(InputPlayerState) _then) = _$InputPlayerStateCopyWithImpl;
@useResult
$Res call({
 List<String> playerNames, bool triggerResetInputName
});




}
/// @nodoc
class _$InputPlayerStateCopyWithImpl<$Res>
    implements $InputPlayerStateCopyWith<$Res> {
  _$InputPlayerStateCopyWithImpl(this._self, this._then);

  final InputPlayerState _self;
  final $Res Function(InputPlayerState) _then;

/// Create a copy of InputPlayerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? playerNames = null,Object? triggerResetInputName = null,}) {
  return _then(InputPlayerState(
playerNames: null == playerNames ? _self.playerNames : playerNames // ignore: cast_nullable_to_non_nullable
as List<String>,triggerResetInputName: null == triggerResetInputName ? _self.triggerResetInputName : triggerResetInputName // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [InputPlayerState].
extension InputPlayerStatePatterns on InputPlayerState {
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
