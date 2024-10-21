// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'm_day_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MDayModel _$MDayModelFromJson(Map<String, dynamic> json) {
  return _MDayModel.fromJson(json);
}

/// @nodoc
mixin _$MDayModel {
  DateTime get date => throw _privateConstructorUsedError;
  List<MActionModel> get actions => throw _privateConstructorUsedError;

  /// Serializes this MDayModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MDayModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MDayModelCopyWith<MDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MDayModelCopyWith<$Res> {
  factory $MDayModelCopyWith(MDayModel value, $Res Function(MDayModel) then) =
      _$MDayModelCopyWithImpl<$Res, MDayModel>;
  @useResult
  $Res call({DateTime date, List<MActionModel> actions});
}

/// @nodoc
class _$MDayModelCopyWithImpl<$Res, $Val extends MDayModel>
    implements $MDayModelCopyWith<$Res> {
  _$MDayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MDayModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? actions = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<MActionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MDayModelImplCopyWith<$Res>
    implements $MDayModelCopyWith<$Res> {
  factory _$$MDayModelImplCopyWith(
          _$MDayModelImpl value, $Res Function(_$MDayModelImpl) then) =
      __$$MDayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, List<MActionModel> actions});
}

/// @nodoc
class __$$MDayModelImplCopyWithImpl<$Res>
    extends _$MDayModelCopyWithImpl<$Res, _$MDayModelImpl>
    implements _$$MDayModelImplCopyWith<$Res> {
  __$$MDayModelImplCopyWithImpl(
      _$MDayModelImpl _value, $Res Function(_$MDayModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MDayModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? actions = null,
  }) {
    return _then(_$MDayModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      actions: null == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<MActionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MDayModelImpl implements _MDayModel {
  _$MDayModelImpl(
      {required this.date, final List<MActionModel> actions = const []})
      : _actions = actions;

  factory _$MDayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MDayModelImplFromJson(json);

  @override
  final DateTime date;
  final List<MActionModel> _actions;
  @override
  @JsonKey()
  List<MActionModel> get actions {
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  String toString() {
    return 'MDayModel(date: $date, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MDayModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_actions));

  /// Create a copy of MDayModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MDayModelImplCopyWith<_$MDayModelImpl> get copyWith =>
      __$$MDayModelImplCopyWithImpl<_$MDayModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MDayModelImplToJson(
      this,
    );
  }
}

abstract class _MDayModel implements MDayModel {
  factory _MDayModel(
      {required final DateTime date,
      final List<MActionModel> actions}) = _$MDayModelImpl;

  factory _MDayModel.fromJson(Map<String, dynamic> json) =
      _$MDayModelImpl.fromJson;

  @override
  DateTime get date;
  @override
  List<MActionModel> get actions;

  /// Create a copy of MDayModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MDayModelImplCopyWith<_$MDayModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
