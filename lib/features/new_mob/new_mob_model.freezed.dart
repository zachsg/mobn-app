// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_mob_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewMobModel _$NewMobModelFromJson(Map<String, dynamic> json) {
  return _NewMobModel.fromJson(json);
}

/// @nodoc
mixin _$NewMobModel {
  @JsonKey(name: 'habit_type')
  MHabitType get habitType => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;
  List<MProfileModel> get mates => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this NewMobModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewMobModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewMobModelCopyWith<NewMobModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewMobModelCopyWith<$Res> {
  factory $NewMobModelCopyWith(
          NewMobModel value, $Res Function(NewMobModel) then) =
      _$NewMobModelCopyWithImpl<$Res, NewMobModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'habit_type') MHabitType habitType,
      int minutes,
      List<MProfileModel> mates,
      bool loading,
      String? error});
}

/// @nodoc
class _$NewMobModelCopyWithImpl<$Res, $Val extends NewMobModel>
    implements $NewMobModelCopyWith<$Res> {
  _$NewMobModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewMobModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitType = null,
    Object? minutes = null,
    Object? mates = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      habitType: null == habitType
          ? _value.habitType
          : habitType // ignore: cast_nullable_to_non_nullable
              as MHabitType,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      mates: null == mates
          ? _value.mates
          : mates // ignore: cast_nullable_to_non_nullable
              as List<MProfileModel>,
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
}

/// @nodoc
abstract class _$$NewMobModelImplCopyWith<$Res>
    implements $NewMobModelCopyWith<$Res> {
  factory _$$NewMobModelImplCopyWith(
          _$NewMobModelImpl value, $Res Function(_$NewMobModelImpl) then) =
      __$$NewMobModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'habit_type') MHabitType habitType,
      int minutes,
      List<MProfileModel> mates,
      bool loading,
      String? error});
}

/// @nodoc
class __$$NewMobModelImplCopyWithImpl<$Res>
    extends _$NewMobModelCopyWithImpl<$Res, _$NewMobModelImpl>
    implements _$$NewMobModelImplCopyWith<$Res> {
  __$$NewMobModelImplCopyWithImpl(
      _$NewMobModelImpl _value, $Res Function(_$NewMobModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewMobModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitType = null,
    Object? minutes = null,
    Object? mates = null,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_$NewMobModelImpl(
      habitType: null == habitType
          ? _value.habitType
          : habitType // ignore: cast_nullable_to_non_nullable
              as MHabitType,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      mates: null == mates
          ? _value._mates
          : mates // ignore: cast_nullable_to_non_nullable
              as List<MProfileModel>,
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
class _$NewMobModelImpl implements _NewMobModel {
  _$NewMobModelImpl(
      {@JsonKey(name: 'habit_type') required this.habitType,
      required this.minutes,
      final List<MProfileModel> mates = const [],
      this.loading = false,
      this.error})
      : _mates = mates;

  factory _$NewMobModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewMobModelImplFromJson(json);

  @override
  @JsonKey(name: 'habit_type')
  final MHabitType habitType;
  @override
  final int minutes;
  final List<MProfileModel> _mates;
  @override
  @JsonKey()
  List<MProfileModel> get mates {
    if (_mates is EqualUnmodifiableListView) return _mates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mates);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  final String? error;

  @override
  String toString() {
    return 'NewMobModel(habitType: $habitType, minutes: $minutes, mates: $mates, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewMobModelImpl &&
            (identical(other.habitType, habitType) ||
                other.habitType == habitType) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            const DeepCollectionEquality().equals(other._mates, _mates) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, habitType, minutes,
      const DeepCollectionEquality().hash(_mates), loading, error);

  /// Create a copy of NewMobModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewMobModelImplCopyWith<_$NewMobModelImpl> get copyWith =>
      __$$NewMobModelImplCopyWithImpl<_$NewMobModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewMobModelImplToJson(
      this,
    );
  }
}

abstract class _NewMobModel implements NewMobModel {
  factory _NewMobModel(
      {@JsonKey(name: 'habit_type') required final MHabitType habitType,
      required final int minutes,
      final List<MProfileModel> mates,
      final bool loading,
      final String? error}) = _$NewMobModelImpl;

  factory _NewMobModel.fromJson(Map<String, dynamic> json) =
      _$NewMobModelImpl.fromJson;

  @override
  @JsonKey(name: 'habit_type')
  MHabitType get habitType;
  @override
  int get minutes;
  @override
  List<MProfileModel> get mates;
  @override
  bool get loading;
  @override
  String? get error;

  /// Create a copy of NewMobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewMobModelImplCopyWith<_$NewMobModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
