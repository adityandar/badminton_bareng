// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaderboardState {

 List<PlayerEntity> get allPlayers; bool get isOngoing;// for UI
 List<PlayerEntity> get topThreePlayers; List<PlayerEntity> get remainingPlayers;// for screenshot
 bool get isDataLoading; bool get isScreenshotLoading; List<PlayerEntity> get screenshotListPlayers; List<PlayerEntity> get screenshotOtherPlayers; String get sessionName;
/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaderboardStateCopyWith<LeaderboardState> get copyWith => _$LeaderboardStateCopyWithImpl<LeaderboardState>(this as LeaderboardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaderboardState&&const DeepCollectionEquality().equals(other.allPlayers, allPlayers)&&(identical(other.isOngoing, isOngoing) || other.isOngoing == isOngoing)&&const DeepCollectionEquality().equals(other.topThreePlayers, topThreePlayers)&&const DeepCollectionEquality().equals(other.remainingPlayers, remainingPlayers)&&(identical(other.isDataLoading, isDataLoading) || other.isDataLoading == isDataLoading)&&(identical(other.isScreenshotLoading, isScreenshotLoading) || other.isScreenshotLoading == isScreenshotLoading)&&const DeepCollectionEquality().equals(other.screenshotListPlayers, screenshotListPlayers)&&const DeepCollectionEquality().equals(other.screenshotOtherPlayers, screenshotOtherPlayers)&&(identical(other.sessionName, sessionName) || other.sessionName == sessionName));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(allPlayers),isOngoing,const DeepCollectionEquality().hash(topThreePlayers),const DeepCollectionEquality().hash(remainingPlayers),isDataLoading,isScreenshotLoading,const DeepCollectionEquality().hash(screenshotListPlayers),const DeepCollectionEquality().hash(screenshotOtherPlayers),sessionName);

@override
String toString() {
  return 'LeaderboardState(allPlayers: $allPlayers, isOngoing: $isOngoing, topThreePlayers: $topThreePlayers, remainingPlayers: $remainingPlayers, isDataLoading: $isDataLoading, isScreenshotLoading: $isScreenshotLoading, screenshotListPlayers: $screenshotListPlayers, screenshotOtherPlayers: $screenshotOtherPlayers, sessionName: $sessionName)';
}


}

/// @nodoc
abstract mixin class $LeaderboardStateCopyWith<$Res>  {
  factory $LeaderboardStateCopyWith(LeaderboardState value, $Res Function(LeaderboardState) _then) = _$LeaderboardStateCopyWithImpl;
@useResult
$Res call({
 List<PlayerEntity> allPlayers, bool isOngoing, List<PlayerEntity> topThreePlayers, List<PlayerEntity> remainingPlayers, bool isDataLoading, bool isScreenshotLoading, List<PlayerEntity> screenshotListPlayers, List<PlayerEntity> screenshotOtherPlayers, String sessionName
});




}
/// @nodoc
class _$LeaderboardStateCopyWithImpl<$Res>
    implements $LeaderboardStateCopyWith<$Res> {
  _$LeaderboardStateCopyWithImpl(this._self, this._then);

  final LeaderboardState _self;
  final $Res Function(LeaderboardState) _then;

/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allPlayers = null,Object? isOngoing = null,Object? topThreePlayers = null,Object? remainingPlayers = null,Object? isDataLoading = null,Object? isScreenshotLoading = null,Object? screenshotListPlayers = null,Object? screenshotOtherPlayers = null,Object? sessionName = null,}) {
  return _then(LeaderboardState(
allPlayers: null == allPlayers ? _self.allPlayers : allPlayers // ignore: cast_nullable_to_non_nullable
as List<PlayerEntity>,isOngoing: null == isOngoing ? _self.isOngoing : isOngoing // ignore: cast_nullable_to_non_nullable
as bool,topThreePlayers: null == topThreePlayers ? _self.topThreePlayers : topThreePlayers // ignore: cast_nullable_to_non_nullable
as List<PlayerEntity>,remainingPlayers: null == remainingPlayers ? _self.remainingPlayers : remainingPlayers // ignore: cast_nullable_to_non_nullable
as List<PlayerEntity>,isDataLoading: null == isDataLoading ? _self.isDataLoading : isDataLoading // ignore: cast_nullable_to_non_nullable
as bool,isScreenshotLoading: null == isScreenshotLoading ? _self.isScreenshotLoading : isScreenshotLoading // ignore: cast_nullable_to_non_nullable
as bool,screenshotListPlayers: null == screenshotListPlayers ? _self.screenshotListPlayers : screenshotListPlayers // ignore: cast_nullable_to_non_nullable
as List<PlayerEntity>,screenshotOtherPlayers: null == screenshotOtherPlayers ? _self.screenshotOtherPlayers : screenshotOtherPlayers // ignore: cast_nullable_to_non_nullable
as List<PlayerEntity>,sessionName: null == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaderboardState].
extension LeaderboardStatePatterns on LeaderboardState {
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
