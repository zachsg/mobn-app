// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_mob_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MMobModelImpl _$$MMobModelImplFromJson(Map<String, dynamic> json) =>
    _$MMobModelImpl(
      mateIDs:
          (json['mate_ids'] as List<dynamic>).map((e) => e as String).toList(),
      goals: (json['goals'] as List<dynamic>)
          .map((e) => MMobGoalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      habitType: $enumDecode(_$MHabitTypeEnumMap, json['habit_type']),
    );

Map<String, dynamic> _$$MMobModelImplToJson(_$MMobModelImpl instance) =>
    <String, dynamic>{
      'mate_ids': instance.mateIDs,
      'goals': instance.goals.map((e) => e.toJson()).toList(),
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
