// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_action_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MActionModelImpl _$$MActionModelImplFromJson(Map<String, dynamic> json) =>
    _$MActionModelImpl(
      mateID: json['mate_id'] as String,
      date: DateTime.parse(json['date'] as String),
      minutes: (json['minutes'] as num).toInt(),
      habitType: $enumDecode(_$MHabitTypeEnumMap, json['habit_type']),
    );

Map<String, dynamic> _$$MActionModelImplToJson(_$MActionModelImpl instance) =>
    <String, dynamic>{
      'mate_id': instance.mateID,
      'date': instance.date.toIso8601String(),
      'minutes': instance.minutes,
      'habit_type': _$MHabitTypeEnumMap[instance.habitType]!,
    };

const _$MHabitTypeEnumMap = {
  MHabitType.cook: 'cook',
  MHabitType.draw: 'draw',
  MHabitType.exercise: 'exercise',
  MHabitType.journal: 'journal',
  MHabitType.meditate: 'meditate',
  MHabitType.paint: 'paint',
  MHabitType.read: 'read',
  MHabitType.write: 'write',
};
