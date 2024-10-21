// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_mob_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InMobModelImpl _$$InMobModelImplFromJson(Map<String, dynamic> json) =>
    _$InMobModelImpl(
      dayRequested: DateTime.parse(json['day_requested'] as String),
      day: MDayModel.fromJson(json['day'] as Map<String, dynamic>),
      loading: json['loading'] as bool? ?? false,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$InMobModelImplToJson(_$InMobModelImpl instance) =>
    <String, dynamic>{
      'day_requested': instance.dayRequested.toIso8601String(),
      'day': instance.day,
      'loading': instance.loading,
      'error': instance.error,
    };
