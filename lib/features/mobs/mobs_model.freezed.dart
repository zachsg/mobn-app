// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mobs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MobsModel _$MobsModelFromJson(Map<String, dynamic> json) {
  return _MobsModel.fromJson(json);
}

/// @nodoc
mixin _$MobsModel {
  bool get loading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this MobsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MobsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MobsModelCopyWith<MobsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobsModelCopyWith<$Res> {
  factory $MobsModelCopyWith(MobsModel value, $Res Function(MobsModel) then) =
      _$MobsModelCopyWithImpl<$Res, MobsModel>;
  @useResult
  $Res call({bool loading, String? error});
}

/// @nodoc
class _$MobsModelCopyWithImpl<$Res, $Val extends MobsModel>
    implements $MobsModelCopyWith<$Res> {
  _$MobsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MobsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$MobsModelImplCopyWith<$Res>
    implements $MobsModelCopyWith<$Res> {
  factory _$$MobsModelImplCopyWith(
          _$MobsModelImpl value, $Res Function(_$MobsModelImpl) then) =
      __$$MobsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String? error});
}

/// @nodoc
class __$$MobsModelImplCopyWithImpl<$Res>
    extends _$MobsModelCopyWithImpl<$Res, _$MobsModelImpl>
    implements _$$MobsModelImplCopyWith<$Res> {
  __$$MobsModelImplCopyWithImpl(
      _$MobsModelImpl _value, $Res Function(_$MobsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_$MobsModelImpl(
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
class _$MobsModelImpl implements _MobsModel {
  _$MobsModelImpl({this.loading = false, this.error});

  factory _$MobsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobsModelImplFromJson(json);

  @override
  @JsonKey()
  final bool loading;
  @override
  final String? error;

  @override
  String toString() {
    return 'MobsModel(loading: $loading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobsModelImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, loading, error);

  /// Create a copy of MobsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MobsModelImplCopyWith<_$MobsModelImpl> get copyWith =>
      __$$MobsModelImplCopyWithImpl<_$MobsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobsModelImplToJson(
      this,
    );
  }
}

abstract class _MobsModel implements MobsModel {
  factory _MobsModel({final bool loading, final String? error}) =
      _$MobsModelImpl;

  factory _MobsModel.fromJson(Map<String, dynamic> json) =
      _$MobsModelImpl.fromJson;

  @override
  bool get loading;
  @override
  String? get error;

  /// Create a copy of MobsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MobsModelImplCopyWith<_$MobsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
