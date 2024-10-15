// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'm_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MProfileModel _$MProfileModelFromJson(Map<String, dynamic> json) {
  return _MProfileModel.fromJson(json);
}

/// @nodoc
mixin _$MProfileModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get handle => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'mob_ids')
  List<String> get mobIDs => throw _privateConstructorUsedError;
  @JsonKey(name: 'push_token')
  String get pushToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_pro')
  bool get isPro => throw _privateConstructorUsedError;
  @JsonKey(name: 'accepted_terms')
  bool get acceptedTerms => throw _privateConstructorUsedError;

  /// Serializes this MProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MProfileModelCopyWith<MProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MProfileModelCopyWith<$Res> {
  factory $MProfileModelCopyWith(
          MProfileModel value, $Res Function(MProfileModel) then) =
      _$MProfileModelCopyWithImpl<$Res, MProfileModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String handle,
      String bio,
      String avatar,
      @JsonKey(name: 'mob_ids') List<String> mobIDs,
      @JsonKey(name: 'push_token') String pushToken,
      @JsonKey(name: 'is_pro') bool isPro,
      @JsonKey(name: 'accepted_terms') bool acceptedTerms});
}

/// @nodoc
class _$MProfileModelCopyWithImpl<$Res, $Val extends MProfileModel>
    implements $MProfileModelCopyWith<$Res> {
  _$MProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? handle = null,
    Object? bio = null,
    Object? avatar = null,
    Object? mobIDs = null,
    Object? pushToken = null,
    Object? isPro = null,
    Object? acceptedTerms = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      handle: null == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      mobIDs: null == mobIDs
          ? _value.mobIDs
          : mobIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pushToken: null == pushToken
          ? _value.pushToken
          : pushToken // ignore: cast_nullable_to_non_nullable
              as String,
      isPro: null == isPro
          ? _value.isPro
          : isPro // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptedTerms: null == acceptedTerms
          ? _value.acceptedTerms
          : acceptedTerms // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MProfileModelImplCopyWith<$Res>
    implements $MProfileModelCopyWith<$Res> {
  factory _$$MProfileModelImplCopyWith(
          _$MProfileModelImpl value, $Res Function(_$MProfileModelImpl) then) =
      __$$MProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String handle,
      String bio,
      String avatar,
      @JsonKey(name: 'mob_ids') List<String> mobIDs,
      @JsonKey(name: 'push_token') String pushToken,
      @JsonKey(name: 'is_pro') bool isPro,
      @JsonKey(name: 'accepted_terms') bool acceptedTerms});
}

/// @nodoc
class __$$MProfileModelImplCopyWithImpl<$Res>
    extends _$MProfileModelCopyWithImpl<$Res, _$MProfileModelImpl>
    implements _$$MProfileModelImplCopyWith<$Res> {
  __$$MProfileModelImplCopyWithImpl(
      _$MProfileModelImpl _value, $Res Function(_$MProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? handle = null,
    Object? bio = null,
    Object? avatar = null,
    Object? mobIDs = null,
    Object? pushToken = null,
    Object? isPro = null,
    Object? acceptedTerms = null,
  }) {
    return _then(_$MProfileModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      handle: null == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      mobIDs: null == mobIDs
          ? _value._mobIDs
          : mobIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pushToken: null == pushToken
          ? _value.pushToken
          : pushToken // ignore: cast_nullable_to_non_nullable
              as String,
      isPro: null == isPro
          ? _value.isPro
          : isPro // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptedTerms: null == acceptedTerms
          ? _value.acceptedTerms
          : acceptedTerms // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MProfileModelImpl implements _MProfileModel {
  _$MProfileModelImpl(
      {required this.id,
      this.name = '',
      this.email = '',
      this.handle = '',
      this.bio = '',
      this.avatar = '',
      @JsonKey(name: 'mob_ids') final List<String> mobIDs = const [],
      @JsonKey(name: 'push_token') this.pushToken = '',
      @JsonKey(name: 'is_pro') this.isPro = false,
      @JsonKey(name: 'accepted_terms') this.acceptedTerms = false})
      : _mobIDs = mobIDs;

  factory _$MProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MProfileModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String handle;
  @override
  @JsonKey()
  final String bio;
  @override
  @JsonKey()
  final String avatar;
  final List<String> _mobIDs;
  @override
  @JsonKey(name: 'mob_ids')
  List<String> get mobIDs {
    if (_mobIDs is EqualUnmodifiableListView) return _mobIDs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mobIDs);
  }

  @override
  @JsonKey(name: 'push_token')
  final String pushToken;
  @override
  @JsonKey(name: 'is_pro')
  final bool isPro;
  @override
  @JsonKey(name: 'accepted_terms')
  final bool acceptedTerms;

  @override
  String toString() {
    return 'MProfileModel(id: $id, name: $name, email: $email, handle: $handle, bio: $bio, avatar: $avatar, mobIDs: $mobIDs, pushToken: $pushToken, isPro: $isPro, acceptedTerms: $acceptedTerms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.handle, handle) || other.handle == handle) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            const DeepCollectionEquality().equals(other._mobIDs, _mobIDs) &&
            (identical(other.pushToken, pushToken) ||
                other.pushToken == pushToken) &&
            (identical(other.isPro, isPro) || other.isPro == isPro) &&
            (identical(other.acceptedTerms, acceptedTerms) ||
                other.acceptedTerms == acceptedTerms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      handle,
      bio,
      avatar,
      const DeepCollectionEquality().hash(_mobIDs),
      pushToken,
      isPro,
      acceptedTerms);

  /// Create a copy of MProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MProfileModelImplCopyWith<_$MProfileModelImpl> get copyWith =>
      __$$MProfileModelImplCopyWithImpl<_$MProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MProfileModelImplToJson(
      this,
    );
  }
}

abstract class _MProfileModel implements MProfileModel {
  factory _MProfileModel(
          {required final String id,
          final String name,
          final String email,
          final String handle,
          final String bio,
          final String avatar,
          @JsonKey(name: 'mob_ids') final List<String> mobIDs,
          @JsonKey(name: 'push_token') final String pushToken,
          @JsonKey(name: 'is_pro') final bool isPro,
          @JsonKey(name: 'accepted_terms') final bool acceptedTerms}) =
      _$MProfileModelImpl;

  factory _MProfileModel.fromJson(Map<String, dynamic> json) =
      _$MProfileModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get handle;
  @override
  String get bio;
  @override
  String get avatar;
  @override
  @JsonKey(name: 'mob_ids')
  List<String> get mobIDs;
  @override
  @JsonKey(name: 'push_token')
  String get pushToken;
  @override
  @JsonKey(name: 'is_pro')
  bool get isPro;
  @override
  @JsonKey(name: 'accepted_terms')
  bool get acceptedTerms;

  /// Create a copy of MProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MProfileModelImplCopyWith<_$MProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
