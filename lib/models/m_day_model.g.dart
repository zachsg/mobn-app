// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MDayModelImpl _$$MDayModelImplFromJson(Map<String, dynamic> json) =>
    _$MDayModelImpl(
      date: DateTime.parse(json['date'] as String),
      actions: (json['actions'] as List<dynamic>?)
              ?.map((e) => MActionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MDayModelImplToJson(_$MDayModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'actions': instance.actions,
    };
