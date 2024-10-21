// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'm_action_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MActionModel _$MActionModelFromJson(Map<String, dynamic> json) {
  return _MActionModel.fromJson(json);
}

/// @nodoc
mixin _$MActionModel {
  @JsonKey(name: 'mate_id')
  String get mateID => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'habit_type')
  MHabitType get habitType => throw _privateConstructorUsedError;

  /// Serializes this MActionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MActionModelCopyWith<MActionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MActionModelCopyWith<$Res> {
  factory $MActionModelCopyWith(
          MActionModel value, $Res Function(MActionModel) then) =
      _$MActionModelCopyWithImpl<$Res, MActionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mate_id') String mateID,
      DateTime date,
      int minutes,
      @JsonKey(name: 'habit_type') MHabitType habitType});
}

/// @nodoc
class _$MActionModelCopyWithImpl<$Res, $Val extends MActionModel>
    implements $MActionModelCopyWith<$Res> {
  _$MActionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MActionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mateID = null,
    Object? date = null,
    Object? minutes = null,
    Object? habitType = null,
  }) {
    return _then(_value.copyWith(
      mateID: null == mateID
          ? _value.mateID
          : mateID // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
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
abstract class _$$MActionModelImplCopyWith<$Res>
    implements $MActionModelCopyWith<$Res> {
  factory _$$MActionModelImplCopyWith(
          _$MActionModelImpl value, $Res Function(_$MActionModelImpl) then) =
      __$$MActionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mate_id') String mateID,
      DateTime date,
      int minutes,
      @JsonKey(name: 'habit_type') MHabitType habitType});
}

/// @nodoc
class __$$MActionModelImplCopyWithImpl<$Res>
    extends _$MActionModelCopyWithImpl<$Res, _$MActionModelImpl>
    implements _$$MActionModelImplCopyWith<$Res> {
  __$$MActionModelImplCopyWithImpl(
      _$MActionModelImpl _value, $Res Function(_$MActionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MActionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mateID = null,
    Object? date = null,
    Object? minutes = null,
    Object? habitType = null,
  }) {
    return _then(_$MActionModelImpl(
      mateID: null == mateID
          ? _value.mateID
          : mateID // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
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
class _$MActionModelImpl implements _MActionModel {
  _$MActionModelImpl(
      {@JsonKey(name: 'mate_id') required this.mateID,
      required this.date,
      required this.minutes,
      @JsonKey(name: 'habit_type') required this.habitType});

  factory _$MActionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MActionModelImplFromJson(json);

  @override
  @JsonKey(name: 'mate_id')
  final String mateID;
  @override
  final DateTime date;
  @override
  final int minutes;
  @override
  @JsonKey(name: 'habit_type')
  final MHabitType habitType;

  @override
  String toString() {
    return 'MActionModel(mateID: $mateID, date: $date, minutes: $minutes, habitType: $habitType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MActionModelImpl &&
            (identical(other.mateID, mateID) || other.mateID == mateID) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.habitType, habitType) ||
                other.habitType == habitType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mateID, date, minutes, habitType);

  /// Create a copy of MActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MActionModelImplCopyWith<_$MActionModelImpl> get copyWith =>
      __$$MActionModelImplCopyWithImpl<_$MActionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MActionModelImplToJson(
      this,
    );
  }
}

abstract class _MActionModel implements MActionModel {
  factory _MActionModel(
          {@JsonKey(name: 'mate_id') required final String mateID,
          required final DateTime date,
          required final int minutes,
          @JsonKey(name: 'habit_type') required final MHabitType habitType}) =
      _$MActionModelImpl;

  factory _MActionModel.fromJson(Map<String, dynamic> json) =
      _$MActionModelImpl.fromJson;

  @override
  @JsonKey(name: 'mate_id')
  String get mateID;
  @override
  DateTime get date;
  @override
  int get minutes;
  @override
  @JsonKey(name: 'habit_type')
  MHabitType get habitType;

  /// Create a copy of MActionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MActionModelImplCopyWith<_$MActionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
