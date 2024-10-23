// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_setup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileSetupModel _$ProfileSetupModelFromJson(Map<String, dynamic> json) {
  return _ProfileSetupModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileSetupModel {
  String get name => throw _privateConstructorUsedError;
  String get handle => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String get nameError => throw _privateConstructorUsedError;
  String get handleError => throw _privateConstructorUsedError;

  /// Serializes this ProfileSetupModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileSetupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileSetupModelCopyWith<ProfileSetupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileSetupModelCopyWith<$Res> {
  factory $ProfileSetupModelCopyWith(
          ProfileSetupModel value, $Res Function(ProfileSetupModel) then) =
      _$ProfileSetupModelCopyWithImpl<$Res, ProfileSetupModel>;
  @useResult
  $Res call(
      {String name,
      String handle,
      String avatar,
      bool loading,
      String nameError,
      String handleError});
}

/// @nodoc
class _$ProfileSetupModelCopyWithImpl<$Res, $Val extends ProfileSetupModel>
    implements $ProfileSetupModelCopyWith<$Res> {
  _$ProfileSetupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileSetupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? handle = null,
    Object? avatar = null,
    Object? loading = null,
    Object? nameError = null,
    Object? handleError = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      handle: null == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      nameError: null == nameError
          ? _value.nameError
          : nameError // ignore: cast_nullable_to_non_nullable
              as String,
      handleError: null == handleError
          ? _value.handleError
          : handleError // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileSetupModelImplCopyWith<$Res>
    implements $ProfileSetupModelCopyWith<$Res> {
  factory _$$ProfileSetupModelImplCopyWith(_$ProfileSetupModelImpl value,
          $Res Function(_$ProfileSetupModelImpl) then) =
      __$$ProfileSetupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String handle,
      String avatar,
      bool loading,
      String nameError,
      String handleError});
}

/// @nodoc
class __$$ProfileSetupModelImplCopyWithImpl<$Res>
    extends _$ProfileSetupModelCopyWithImpl<$Res, _$ProfileSetupModelImpl>
    implements _$$ProfileSetupModelImplCopyWith<$Res> {
  __$$ProfileSetupModelImplCopyWithImpl(_$ProfileSetupModelImpl _value,
      $Res Function(_$ProfileSetupModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileSetupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? handle = null,
    Object? avatar = null,
    Object? loading = null,
    Object? nameError = null,
    Object? handleError = null,
  }) {
    return _then(_$ProfileSetupModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      handle: null == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      nameError: null == nameError
          ? _value.nameError
          : nameError // ignore: cast_nullable_to_non_nullable
              as String,
      handleError: null == handleError
          ? _value.handleError
          : handleError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileSetupModelImpl implements _ProfileSetupModel {
  _$ProfileSetupModelImpl(
      {this.name = '',
      this.handle = '',
      this.avatar = '',
      this.loading = false,
      this.nameError = '',
      this.handleError = ''});

  factory _$ProfileSetupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileSetupModelImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String handle;
  @override
  @JsonKey()
  final String avatar;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String nameError;
  @override
  @JsonKey()
  final String handleError;

  @override
  String toString() {
    return 'ProfileSetupModel(name: $name, handle: $handle, avatar: $avatar, loading: $loading, nameError: $nameError, handleError: $handleError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSetupModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.handle, handle) || other.handle == handle) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.nameError, nameError) ||
                other.nameError == nameError) &&
            (identical(other.handleError, handleError) ||
                other.handleError == handleError));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, handle, avatar, loading, nameError, handleError);

  /// Create a copy of ProfileSetupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileSetupModelImplCopyWith<_$ProfileSetupModelImpl> get copyWith =>
      __$$ProfileSetupModelImplCopyWithImpl<_$ProfileSetupModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileSetupModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileSetupModel implements ProfileSetupModel {
  factory _ProfileSetupModel(
      {final String name,
      final String handle,
      final String avatar,
      final bool loading,
      final String nameError,
      final String handleError}) = _$ProfileSetupModelImpl;

  factory _ProfileSetupModel.fromJson(Map<String, dynamic> json) =
      _$ProfileSetupModelImpl.fromJson;

  @override
  String get name;
  @override
  String get handle;
  @override
  String get avatar;
  @override
  bool get loading;
  @override
  String get nameError;
  @override
  String get handleError;

  /// Create a copy of ProfileSetupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileSetupModelImplCopyWith<_$ProfileSetupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
