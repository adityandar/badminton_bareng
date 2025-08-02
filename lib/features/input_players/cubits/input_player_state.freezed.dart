// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$InputPlayerState {
  List<String> get names => throw _privateConstructorUsedError;
  bool get triggerResetInputName => throw _privateConstructorUsedError;

  /// Create a copy of InputPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputPlayerStateCopyWith<InputPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputPlayerStateCopyWith<$Res> {
  factory $InputPlayerStateCopyWith(
    InputPlayerState value,
    $Res Function(InputPlayerState) then,
  ) = _$InputPlayerStateCopyWithImpl<$Res, InputPlayerState>;
  @useResult
  $Res call({List<String> names, bool triggerResetInputName});
}

/// @nodoc
class _$InputPlayerStateCopyWithImpl<$Res, $Val extends InputPlayerState>
    implements $InputPlayerStateCopyWith<$Res> {
  _$InputPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? names = null, Object? triggerResetInputName = null}) {
    return _then(
      _value.copyWith(
            names:
                null == names
                    ? _value.names
                    : names // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            triggerResetInputName:
                null == triggerResetInputName
                    ? _value.triggerResetInputName
                    : triggerResetInputName // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InputPlayerStateImplCopyWith<$Res>
    implements $InputPlayerStateCopyWith<$Res> {
  factory _$$InputPlayerStateImplCopyWith(
    _$InputPlayerStateImpl value,
    $Res Function(_$InputPlayerStateImpl) then,
  ) = __$$InputPlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> names, bool triggerResetInputName});
}

/// @nodoc
class __$$InputPlayerStateImplCopyWithImpl<$Res>
    extends _$InputPlayerStateCopyWithImpl<$Res, _$InputPlayerStateImpl>
    implements _$$InputPlayerStateImplCopyWith<$Res> {
  __$$InputPlayerStateImplCopyWithImpl(
    _$InputPlayerStateImpl _value,
    $Res Function(_$InputPlayerStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InputPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? names = null, Object? triggerResetInputName = null}) {
    return _then(
      _$InputPlayerStateImpl(
        names:
            null == names
                ? _value._names
                : names // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        triggerResetInputName:
            null == triggerResetInputName
                ? _value.triggerResetInputName
                : triggerResetInputName // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$InputPlayerStateImpl implements _InputPlayerState {
  _$InputPlayerStateImpl({
    required final List<String> names,
    required this.triggerResetInputName,
  }) : _names = names;

  final List<String> _names;
  @override
  List<String> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  @override
  final bool triggerResetInputName;

  @override
  String toString() {
    return 'InputPlayerState(names: $names, triggerResetInputName: $triggerResetInputName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputPlayerStateImpl &&
            const DeepCollectionEquality().equals(other._names, _names) &&
            (identical(other.triggerResetInputName, triggerResetInputName) ||
                other.triggerResetInputName == triggerResetInputName));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_names),
    triggerResetInputName,
  );

  /// Create a copy of InputPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputPlayerStateImplCopyWith<_$InputPlayerStateImpl> get copyWith =>
      __$$InputPlayerStateImplCopyWithImpl<_$InputPlayerStateImpl>(
        this,
        _$identity,
      );
}

abstract class _InputPlayerState implements InputPlayerState {
  factory _InputPlayerState({
    required final List<String> names,
    required final bool triggerResetInputName,
  }) = _$InputPlayerStateImpl;

  @override
  List<String> get names;
  @override
  bool get triggerResetInputName;

  /// Create a copy of InputPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputPlayerStateImplCopyWith<_$InputPlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
