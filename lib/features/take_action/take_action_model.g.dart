// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'take_action_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TakeActionModelImpl _$$TakeActionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TakeActionModelImpl(
      seconds: (json['seconds'] as num?)?.toInt() ?? 0,
      paused: json['paused'] as bool? ?? false,
      loading: json['loading'] as bool? ?? false,
    );

Map<String, dynamic> _$$TakeActionModelImplToJson(
        _$TakeActionModelImpl instance) =>
    <String, dynamic>{
      'seconds': instance.seconds,
      'paused': instance.paused,
      'loading': instance.loading,
    };
