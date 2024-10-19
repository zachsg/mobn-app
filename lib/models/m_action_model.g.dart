// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_action_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MActionModelImpl _$$MActionModelImplFromJson(Map<String, dynamic> json) =>
    _$MActionModelImpl(
      date: DateTime.parse(json['date'] as String),
      minutes: (json['minutes'] as num).toInt(),
      habitType: $enumDecode(_$MHabitTypeEnumMap, json['habit_type']),
    );

Map<String, dynamic> _$$MActionModelImplToJson(_$MActionModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'minutes': instance.minutes,
      'habit_type': _$MHabitTypeEnumMap[instance.habitType]!,
    };

const _$MHabitTypeEnumMap = {
  MHabitType.meditate: 'meditate',
  MHabitType.read: 'read',
};
