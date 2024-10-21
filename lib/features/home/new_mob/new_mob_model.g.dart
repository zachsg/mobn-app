// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_mob_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewMobModelImpl _$$NewMobModelImplFromJson(Map<String, dynamic> json) =>
    _$NewMobModelImpl(
      habitType: $enumDecode(_$MHabitTypeEnumMap, json['habit_type']),
      minutes: (json['minutes'] as num).toInt(),
      mates: (json['mates'] as List<dynamic>?)
              ?.map((e) => MProfileModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      loading: json['loading'] as bool? ?? false,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$NewMobModelImplToJson(_$NewMobModelImpl instance) =>
    <String, dynamic>{
      'habit_type': _$MHabitTypeEnumMap[instance.habitType]!,
      'minutes': instance.minutes,
      'mates': instance.mates,
      'loading': instance.loading,
      'error': instance.error,
    };

const _$MHabitTypeEnumMap = {
  MHabitType.meditate: 'meditate',
  MHabitType.read: 'read',
};
