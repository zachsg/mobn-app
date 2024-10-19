// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'm_goal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MGoalModel _$MGoalModelFromJson(Map<String, dynamic> json) {
  return _MGoalModel.fromJson(json);
}

/// @nodoc
mixin _$MGoalModel {
  @JsonKey(name: 'start_date')
  DateTime get startDate => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'habit_type')
  MHabitType get habitType => throw _privateConstructorUsedError;

  /// Serializes this MGoalModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MGoalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MGoalModelCopyWith<MGoalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MGoalModelCopyWith<$Res> {
  factory $MGoalModelCopyWith(
          MGoalModel value, $Res Function(MGoalModel) then) =
      _$MGoalModelCopyWithImpl<$Res, MGoalModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'start_date') DateTime startDate,
      int minutes,
      @JsonKey(name: 'habit_type') MHabitType habitType});
}

/// @nodoc
class _$MGoalModelCopyWithImpl<$Res, $Val extends MGoalModel>
    implements $MGoalModelCopyWith<$Res> {
  _$MGoalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MGoalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? minutes = null,
    Object? habitType = null,
  }) {
    return _then(_value.copyWith(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      habitType: null == habitType
          ? _value.habitType
          : habitType // ignore: cast_nullable_to_non_nullable
              as MHabitType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MGoalModelImplCopyWith<$Res>
    implements $MGoalModelCopyWith<$Res> {
  factory _$$MGoalModelImplCopyWith(
          _$MGoalModelImpl value, $Res Function(_$MGoalModelImpl) then) =
      __$$MGoalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'start_date') DateTime startDate,
      int minutes,
      @JsonKey(name: 'habit_type') MHabitType habitType});
}

/// @nodoc
class __$$MGoalModelImplCopyWithImpl<$Res>
    extends _$MGoalModelCopyWithImpl<$Res, _$MGoalModelImpl>
    implements _$$MGoalModelImplCopyWith<$Res> {
  __$$MGoalModelImplCopyWithImpl(
      _$MGoalModelImpl _value, $Res Function(_$MGoalModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MGoalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? minutes = null,
    Object? habitType = null,
  }) {
    return _then(_$MGoalModelImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      habitType: null == habitType
          ? _value.habitType
          : habitType // ignore: cast_nullable_to_non_nullable
              as MHabitType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MGoalModelImpl implements _MGoalModel {
  _$MGoalModelImpl(
      {@JsonKey(name: 'start_date') required this.startDate,
      required this.minutes,
      @JsonKey(name: 'habit_type') required this.habitType});

  factory _$MGoalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MGoalModelImplFromJson(json);

  @override
  @JsonKey(name: 'start_date')
  final DateTime startDate;
  @override
  final int minutes;
  @override
  @JsonKey(name: 'habit_type')
  final MHabitType habitType;

  @override
  String toString() {
    return 'MGoalModel(startDate: $startDate, minutes: $minutes, habitType: $habitType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MGoalModelImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.habitType, habitType) ||
                other.habitType == habitType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, minutes, habitType);

  /// Create a copy of MGoalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MGoalModelImplCopyWith<_$MGoalModelImpl> get copyWith =>
      __$$MGoalModelImplCopyWithImpl<_$MGoalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MGoalModelImplToJson(
      this,
    );
  }
}

abstract class _MGoalModel implements MGoalModel {
  factory _MGoalModel(
          {@JsonKey(name: 'start_date') required final DateTime startDate,
          required final int minutes,
          @JsonKey(name: 'habit_type') required final MHabitType habitType}) =
      _$MGoalModelImpl;

  factory _MGoalModel.fromJson(Map<String, dynamic> json) =
      _$MGoalModelImpl.fromJson;

  @override
  @JsonKey(name: 'start_date')
  DateTime get startDate;
  @override
  int get minutes;
  @override
  @JsonKey(name: 'habit_type')
  MHabitType get habitType;

  /// Create a copy of MGoalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MGoalModelImplCopyWith<_$MGoalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
