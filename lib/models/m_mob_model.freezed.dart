// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'm_mob_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MMobModel _$MMobModelFromJson(Map<String, dynamic> json) {
  return _MMobModel.fromJson(json);
}

/// @nodoc
mixin _$MMobModel {
  @JsonKey(name: 'mate_ids')
  List<String> get mateIDs => throw _privateConstructorUsedError;
  List<MProfileModel> get mates => throw _privateConstructorUsedError;
  @JsonKey(name: 'habit_type')
  MHabitType get habitType => throw _privateConstructorUsedError;

  /// Serializes this MMobModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MMobModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MMobModelCopyWith<MMobModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MMobModelCopyWith<$Res> {
  factory $MMobModelCopyWith(MMobModel value, $Res Function(MMobModel) then) =
      _$MMobModelCopyWithImpl<$Res, MMobModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mate_ids') List<String> mateIDs,
      List<MProfileModel> mates,
      @JsonKey(name: 'habit_type') MHabitType habitType});
}

/// @nodoc
class _$MMobModelCopyWithImpl<$Res, $Val extends MMobModel>
    implements $MMobModelCopyWith<$Res> {
  _$MMobModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MMobModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mateIDs = null,
    Object? mates = null,
    Object? habitType = null,
  }) {
    return _then(_value.copyWith(
      mateIDs: null == mateIDs
          ? _value.mateIDs
          : mateIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mates: null == mates
          ? _value.mates
          : mates // ignore: cast_nullable_to_non_nullable
              as List<MProfileModel>,
      habitType: null == habitType
          ? _value.habitType
          : habitType // ignore: cast_nullable_to_non_nullable
              as MHabitType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MMobModelImplCopyWith<$Res>
    implements $MMobModelCopyWith<$Res> {
  factory _$$MMobModelImplCopyWith(
          _$MMobModelImpl value, $Res Function(_$MMobModelImpl) then) =
      __$$MMobModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mate_ids') List<String> mateIDs,
      List<MProfileModel> mates,
      @JsonKey(name: 'habit_type') MHabitType habitType});
}

/// @nodoc
class __$$MMobModelImplCopyWithImpl<$Res>
    extends _$MMobModelCopyWithImpl<$Res, _$MMobModelImpl>
    implements _$$MMobModelImplCopyWith<$Res> {
  __$$MMobModelImplCopyWithImpl(
      _$MMobModelImpl _value, $Res Function(_$MMobModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MMobModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mateIDs = null,
    Object? mates = null,
    Object? habitType = null,
  }) {
    return _then(_$MMobModelImpl(
      mateIDs: null == mateIDs
          ? _value._mateIDs
          : mateIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mates: null == mates
          ? _value._mates
          : mates // ignore: cast_nullable_to_non_nullable
              as List<MProfileModel>,
      habitType: null == habitType
          ? _value.habitType
          : habitType // ignore: cast_nullable_to_non_nullable
              as MHabitType,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MMobModelImpl implements _MMobModel {
  _$MMobModelImpl(
      {@JsonKey(name: 'mate_ids') required final List<String> mateIDs,
      required final List<MProfileModel> mates,
      @JsonKey(name: 'habit_type') required this.habitType})
      : _mateIDs = mateIDs,
        _mates = mates;

  factory _$MMobModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MMobModelImplFromJson(json);

  final List<String> _mateIDs;
  @override
  @JsonKey(name: 'mate_ids')
  List<String> get mateIDs {
    if (_mateIDs is EqualUnmodifiableListView) return _mateIDs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mateIDs);
  }

  final List<MProfileModel> _mates;
  @override
  List<MProfileModel> get mates {
    if (_mates is EqualUnmodifiableListView) return _mates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mates);
  }

  @override
  @JsonKey(name: 'habit_type')
  final MHabitType habitType;

  @override
  String toString() {
    return 'MMobModel(mateIDs: $mateIDs, mates: $mates, habitType: $habitType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MMobModelImpl &&
            const DeepCollectionEquality().equals(other._mateIDs, _mateIDs) &&
            const DeepCollectionEquality().equals(other._mates, _mates) &&
            (identical(other.habitType, habitType) ||
                other.habitType == habitType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_mateIDs),
      const DeepCollectionEquality().hash(_mates),
      habitType);

  /// Create a copy of MMobModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MMobModelImplCopyWith<_$MMobModelImpl> get copyWith =>
      __$$MMobModelImplCopyWithImpl<_$MMobModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MMobModelImplToJson(
      this,
    );
  }
}

abstract class _MMobModel implements MMobModel {
  factory _MMobModel(
          {@JsonKey(name: 'mate_ids') required final List<String> mateIDs,
          required final List<MProfileModel> mates,
          @JsonKey(name: 'habit_type') required final MHabitType habitType}) =
      _$MMobModelImpl;

  factory _MMobModel.fromJson(Map<String, dynamic> json) =
      _$MMobModelImpl.fromJson;

  @override
  @JsonKey(name: 'mate_ids')
  List<String> get mateIDs;
  @override
  List<MProfileModel> get mates;
  @override
  @JsonKey(name: 'habit_type')
  MHabitType get habitType;

  /// Create a copy of MMobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MMobModelImplCopyWith<_$MMobModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
