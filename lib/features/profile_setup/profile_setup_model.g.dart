// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_setup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileSetupModelImpl _$$ProfileSetupModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileSetupModelImpl(
      name: json['name'] as String? ?? '',
      handle: json['handle'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      loading: json['loading'] as bool? ?? false,
      nameError: json['nameError'] as String? ?? '',
      handleError: json['handleError'] as String? ?? '',
    );

Map<String, dynamic> _$$ProfileSetupModelImplToJson(
        _$ProfileSetupModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'handle': instance.handle,
      'avatar': instance.avatar,
      'loading': instance.loading,
      'nameError': instance.nameError,
      'handleError': instance.handleError,
    };
