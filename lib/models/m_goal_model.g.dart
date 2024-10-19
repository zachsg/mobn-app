// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_goal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MGoalModelImpl _$$MGoalModelImplFromJson(Map<String, dynamic> json) =>
    _$MGoalModelImpl(
      startDate: DateTime.parse(json['start_date'] as String),
      minutes: (json['minutes'] as num).toInt(),
      habitType: $enumDecode(_$MHabitTypeEnumMap, json['habit_type']),
    );

Map<String, dynamic> _$$MGoalModelImplToJson(_$MGoalModelImpl instance) =>
    <String, dynamic>{
      'start_date': instance.startDate.toIso8601String(),
      'minutes': instance.minutes,
      'habit_type': _$MHabitTypeEnumMap[instance.habitType]!,
    };

const _$MHabitTypeEnumMap = {
  MHabitType.meditate: 'meditate',
  MHabitType.read: 'read',
};
