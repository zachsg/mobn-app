// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'm_mob_goal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MMobGoalModel _$MMobGoalModelFromJson(Map<String, dynamic> json) {
  return _MMobGoalModel.fromJson(json);
}

/// @nodoc
mixin _$MMobGoalModel {
  @JsonKey(name: 'mate_id')
  String get mateID => throw _privateConstructorUsedError;
  @JsonKey(name: 'mate_name')
  String get mateName => throw _privateConstructorUsedError;
  @JsonKey(name: 'mate_handle')
  String get mateHandle => throw _privateConstructorUsedError;
  @JsonKey(name: 'mate_avatar')
  String get mateAvatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  DateTime get startDate => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;

  /// Serializes this MMobGoalModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MMobGoalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MMobGoalModelCopyWith<MMobGoalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MMobGoalModelCopyWith<$Res> {
  factory $MMobGoalModelCopyWith(
          MMobGoalModel value, $Res Function(MMobGoalModel) then) =
      _$MMobGoalModelCopyWithImpl<$Res, MMobGoalModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mate_id') String mateID,
      @JsonKey(name: 'mate_name') String mateName,
      @JsonKey(name: 'mate_handle') String mateHandle,
      @JsonKey(name: 'mate_avatar') String mateAvatar,
      @JsonKey(name: 'start_date') DateTime startDate,
      int minutes});
}

/// @nodoc
class _$MMobGoalModelCopyWithImpl<$Res, $Val extends MMobGoalModel>
    implements $MMobGoalModelCopyWith<$Res> {
  _$MMobGoalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MMobGoalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mateID = null,
    Object? mateName = null,
    Object? mateHandle = null,
    Object? mateAvatar = null,
    Object? startDate = null,
    Object? minutes = null,
  }) {
    return _then(_value.copyWith(
      mateID: null == mateID
          ? _value.mateID
          : mateID // ignore: cast_nullable_to_non_nullable
              as String,
      mateName: null == mateName
          ? _value.mateName
          : mateName // ignore: cast_nullable_to_non_nullable
              as String,
      mateHandle: null == mateHandle
          ? _value.mateHandle
          : mateHandle // ignore: cast_nullable_to_non_nullable
              as String,
      mateAvatar: null == mateAvatar
          ? _value.mateAvatar
          : mateAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MMobGoalModelImplCopyWith<$Res>
    implements $MMobGoalModelCopyWith<$Res> {
  factory _$$MMobGoalModelImplCopyWith(
          _$MMobGoalModelImpl value, $Res Function(_$MMobGoalModelImpl) then) =
      __$$MMobGoalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mate_id') String mateID,
      @JsonKey(name: 'mate_name') String mateName,
      @JsonKey(name: 'mate_handle') String mateHandle,
      @JsonKey(name: 'mate_avatar') String mateAvatar,
      @JsonKey(name: 'start_date') DateTime startDate,
      int minutes});
}

/// @nodoc
class __$$MMobGoalModelImplCopyWithImpl<$Res>
    extends _$MMobGoalModelCopyWithImpl<$Res, _$MMobGoalModelImpl>
    implements _$$MMobGoalModelImplCopyWith<$Res> {
  __$$MMobGoalModelImplCopyWithImpl(
      _$MMobGoalModelImpl _value, $Res Function(_$MMobGoalModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MMobGoalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mateID = null,
    Object? mateName = null,
    Object? mateHandle = null,
    Object? mateAvatar = null,
    Object? startDate = null,
    Object? minutes = null,
  }) {
    return _then(_$MMobGoalModelImpl(
      mateID: null == mateID
          ? _value.mateID
          : mateID // ignore: cast_nullable_to_non_nullable
              as String,
      mateName: null == mateName
          ? _value.mateName
          : mateName // ignore: cast_nullable_to_non_nullable
              as String,
      mateHandle: null == mateHandle
          ? _value.mateHandle
          : mateHandle // ignore: cast_nullable_to_non_nullable
              as String,
      mateAvatar: null == mateAvatar
          ? _value.mateAvatar
          : mateAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MMobGoalModelImpl implements _MMobGoalModel {
  _$MMobGoalModelImpl(
      {@JsonKey(name: 'mate_id') required this.mateID,
      @JsonKey(name: 'mate_name') this.mateName = '',
      @JsonKey(name: 'mate_handle') this.mateHandle = '',
      @JsonKey(name: 'mate_avatar') this.mateAvatar = '',
      @JsonKey(name: 'start_date') required this.startDate,
      required this.minutes});

  factory _$MMobGoalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MMobGoalModelImplFromJson(json);

  @override
  @JsonKey(name: 'mate_id')
  final String mateID;
  @override
  @JsonKey(name: 'mate_name')
  final String mateName;
  @override
  @JsonKey(name: 'mate_handle')
  final String mateHandle;
  @override
  @JsonKey(name: 'mate_avatar')
  final String mateAvatar;
  @override
  @JsonKey(name: 'start_date')
  final DateTime startDate;
  @override
  final int minutes;

  @override
  String toString() {
    return 'MMobGoalModel(mateID: $mateID, mateName: $mateName, mateHandle: $mateHandle, mateAvatar: $mateAvatar, startDate: $startDate, minutes: $minutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MMobGoalModelImpl &&
            (identical(other.mateID, mateID) || other.mateID == mateID) &&
            (identical(other.mateName, mateName) ||
                other.mateName == mateName) &&
            (identical(other.mateHandle, mateHandle) ||
                other.mateHandle == mateHandle) &&
            (identical(other.mateAvatar, mateAvatar) ||
                other.mateAvatar == mateAvatar) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mateID, mateName, mateHandle,
      mateAvatar, startDate, minutes);

  /// Create a copy of MMobGoalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MMobGoalModelImplCopyWith<_$MMobGoalModelImpl> get copyWith =>
      __$$MMobGoalModelImplCopyWithImpl<_$MMobGoalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MMobGoalModelImplToJson(
      this,
    );
  }
}

abstract class _MMobGoalModel implements MMobGoalModel {
  factory _MMobGoalModel(
      {@JsonKey(name: 'mate_id') required final String mateID,
      @JsonKey(name: 'mate_name') final String mateName,
      @JsonKey(name: 'mate_handle') final String mateHandle,
      @JsonKey(name: 'mate_avatar') final String mateAvatar,
      @JsonKey(name: 'start_date') required final DateTime startDate,
      required final int minutes}) = _$MMobGoalModelImpl;

  factory _MMobGoalModel.fromJson(Map<String, dynamic> json) =
      _$MMobGoalModelImpl.fromJson;

  @override
  @JsonKey(name: 'mate_id')
  String get mateID;
  @override
  @JsonKey(name: 'mate_name')
  String get mateName;
  @override
  @JsonKey(name: 'mate_handle')
  String get mateHandle;
  @override
  @JsonKey(name: 'mate_avatar')
  String get mateAvatar;
  @override
  @JsonKey(name: 'start_date')
  DateTime get startDate;
  @override
  int get minutes;

  /// Create a copy of MMobGoalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MMobGoalModelImplCopyWith<_$MMobGoalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
