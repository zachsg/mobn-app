// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'take_action_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TakeActionModel _$TakeActionModelFromJson(Map<String, dynamic> json) {
  return _TakeActionModel.fromJson(json);
}

/// @nodoc
mixin _$TakeActionModel {
  int get seconds => throw _privateConstructorUsedError;
  bool get paused => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  /// Serializes this TakeActionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TakeActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TakeActionModelCopyWith<TakeActionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TakeActionModelCopyWith<$Res> {
  factory $TakeActionModelCopyWith(
          TakeActionModel value, $Res Function(TakeActionModel) then) =
      _$TakeActionModelCopyWithImpl<$Res, TakeActionModel>;
  @useResult
  $Res call({int seconds, bool paused, bool loading});
}

/// @nodoc
class _$TakeActionModelCopyWithImpl<$Res, $Val extends TakeActionModel>
    implements $TakeActionModelCopyWith<$Res> {
  _$TakeActionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TakeActionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seconds = null,
    Object? paused = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      paused: null == paused
          ? _value.paused
          : paused // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TakeActionModelImplCopyWith<$Res>
    implements $TakeActionModelCopyWith<$Res> {
  factory _$$TakeActionModelImplCopyWith(_$TakeActionModelImpl value,
          $Res Function(_$TakeActionModelImpl) then) =
      __$$TakeActionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seconds, bool paused, bool loading});
}

/// @nodoc
class __$$TakeActionModelImplCopyWithImpl<$Res>
    extends _$TakeActionModelCopyWithImpl<$Res, _$TakeActionModelImpl>
    implements _$$TakeActionModelImplCopyWith<$Res> {
  __$$TakeActionModelImplCopyWithImpl(
      _$TakeActionModelImpl _value, $Res Function(_$TakeActionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TakeActionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seconds = null,
    Object? paused = null,
    Object? loading = null,
  }) {
    return _then(_$TakeActionModelImpl(
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      paused: null == paused
          ? _value.paused
          : paused // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TakeActionModelImpl implements _TakeActionModel {
  _$TakeActionModelImpl(
      {this.seconds = 0, this.paused = false, this.loading = false});

  factory _$TakeActionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TakeActionModelImplFromJson(json);

  @override
  @JsonKey()
  final int seconds;
  @override
  @JsonKey()
  final bool paused;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'TakeActionModel(seconds: $seconds, paused: $paused, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakeActionModelImpl &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            (identical(other.paused, paused) || other.paused == paused) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seconds, paused, loading);

  /// Create a copy of TakeActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TakeActionModelImplCopyWith<_$TakeActionModelImpl> get copyWith =>
      __$$TakeActionModelImplCopyWithImpl<_$TakeActionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TakeActionModelImplToJson(
      this,
    );
  }
}

abstract class _TakeActionModel implements TakeActionModel {
  factory _TakeActionModel(
      {final int seconds,
      final bool paused,
      final bool loading}) = _$TakeActionModelImpl;

  factory _TakeActionModel.fromJson(Map<String, dynamic> json) =
      _$TakeActionModelImpl.fromJson;

  @override
  int get seconds;
  @override
  bool get paused;
  @override
  bool get loading;

  /// Create a copy of TakeActionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TakeActionModelImplCopyWith<_$TakeActionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
