// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'in_mob_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InMobModel _$InMobModelFromJson(Map<String, dynamic> json) {
  return _InMobModel.fromJson(json);
}

/// @nodoc
mixin _$InMobModel {
  @JsonKey(name: 'day_requested')
  DateTime get dayRequested => throw _privateConstructorUsedError;
  MDayModel get day => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this InMobModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InMobModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InMobModelCopyWith<InMobModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InMobModelCopyWith<$Res> {
  factory $InMobModelCopyWith(
          InMobModel value, $Res Function(InMobModel) then) =
      _$InMobModelCopyWithImpl<$Res, InMobModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'day_requested') DateTime dayRequested,
      MDayModel day,
      int minutes,
      bool loading,
      String? error});

  $MDayModelCopyWith<$Res> get day;
}

/// @nodoc
class _$InMobModelCopyWithImpl<$Res, $Val extends InMobModel>
    implements $InMobModelCopyWith<$Res> {
  _$InMobModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InMobModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayRequested = null,
    Object? day = null,
    Object? minutes = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      dayRequested: null == dayRequested
          ? _value.dayRequested
          : dayRequested // ignore: cast_nullable_to_non_nullable
              as DateTime,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as MDayModel,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of InMobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MDayModelCopyWith<$Res> get day {
    return $MDayModelCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InMobModelImplCopyWith<$Res>
    implements $InMobModelCopyWith<$Res> {
  factory _$$InMobModelImplCopyWith(
          _$InMobModelImpl value, $Res Function(_$InMobModelImpl) then) =
      __$$InMobModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'day_requested') DateTime dayRequested,
      MDayModel day,
      int minutes,
      bool loading,
      String? error});

  @override
  $MDayModelCopyWith<$Res> get day;
}

/// @nodoc
class __$$InMobModelImplCopyWithImpl<$Res>
    extends _$InMobModelCopyWithImpl<$Res, _$InMobModelImpl>
    implements _$$InMobModelImplCopyWith<$Res> {
  __$$InMobModelImplCopyWithImpl(
      _$InMobModelImpl _value, $Res Function(_$InMobModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InMobModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayRequested = null,
    Object? day = null,
    Object? minutes = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_$InMobModelImpl(
      dayRequested: null == dayRequested
          ? _value.dayRequested
          : dayRequested // ignore: cast_nullable_to_non_nullable
              as DateTime,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as MDayModel,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InMobModelImpl implements _InMobModel {
  _$InMobModelImpl(
      {@JsonKey(name: 'day_requested') required this.dayRequested,
      required this.day,
      this.minutes = 5,
      this.loading = false,
      this.error});

  factory _$InMobModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InMobModelImplFromJson(json);

  @override
  @JsonKey(name: 'day_requested')
  final DateTime dayRequested;
  @override
  final MDayModel day;
  @override
  @JsonKey()
  final int minutes;
  @override
  @JsonKey()
  final bool loading;
  @override
  final String? error;

  @override
  String toString() {
    return 'InMobModel(dayRequested: $dayRequested, day: $day, minutes: $minutes, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InMobModelImpl &&
            (identical(other.dayRequested, dayRequested) ||
                other.dayRequested == dayRequested) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dayRequested, day, minutes, loading, error);

  /// Create a copy of InMobModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InMobModelImplCopyWith<_$InMobModelImpl> get copyWith =>
      __$$InMobModelImplCopyWithImpl<_$InMobModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InMobModelImplToJson(
      this,
    );
  }
}

abstract class _InMobModel implements InMobModel {
  factory _InMobModel(
      {@JsonKey(name: 'day_requested') required final DateTime dayRequested,
      required final MDayModel day,
      final int minutes,
      final bool loading,
      final String? error}) = _$InMobModelImpl;

  factory _InMobModel.fromJson(Map<String, dynamic> json) =
      _$InMobModelImpl.fromJson;

  @override
  @JsonKey(name: 'day_requested')
  DateTime get dayRequested;
  @override
  MDayModel get day;
  @override
  int get minutes;
  @override
  bool get loading;
  @override
  String? get error;

  /// Create a copy of InMobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InMobModelImplCopyWith<_$InMobModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
