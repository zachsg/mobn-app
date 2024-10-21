// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MProfileModelImpl _$$MProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$MProfileModelImpl(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      handle: json['handle'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      goals: (json['goals'] as List<dynamic>?)
              ?.map((e) => MGoalModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      actions: (json['actions'] as List<dynamic>?)
              ?.map((e) => MActionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      mateIDs: (json['mate_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      pushToken: json['push_token'] as String? ?? '',
      isPro: json['is_pro'] as bool? ?? false,
      acceptedTerms: json['accepted_terms'] as bool? ?? false,
    );

Map<String, dynamic> _$$MProfileModelImplToJson(_$MProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'handle': instance.handle,
      'avatar': instance.avatar,
      'goals': instance.goals.map((e) => e.toJson()).toList(),
      'actions': instance.actions.map((e) => e.toJson()).toList(),
      'mate_ids': instance.mateIDs,
      'push_token': instance.pushToken,
      'is_pro': instance.isPro,
      'accepted_terms': instance.acceptedTerms,
    };
