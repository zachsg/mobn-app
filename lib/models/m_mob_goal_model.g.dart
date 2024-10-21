// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_mob_goal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MMobGoalModelImpl _$$MMobGoalModelImplFromJson(Map<String, dynamic> json) =>
    _$MMobGoalModelImpl(
      mateID: json['mate_id'] as String,
      mateName: json['mate_name'] as String? ?? '',
      mateHandle: json['mate_handle'] as String? ?? '',
      mateAvatar: json['mate_avatar'] as String? ?? '',
      startDate: DateTime.parse(json['start_date'] as String),
      minutes: (json['minutes'] as num).toInt(),
    );

Map<String, dynamic> _$$MMobGoalModelImplToJson(_$MMobGoalModelImpl instance) =>
    <String, dynamic>{
      'mate_id': instance.mateID,
      'mate_name': instance.mateName,
      'mate_handle': instance.mateHandle,
      'mate_avatar': instance.mateAvatar,
      'start_date': instance.startDate.toIso8601String(),
      'minutes': instance.minutes,
    };
