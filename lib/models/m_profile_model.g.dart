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
      bio: json['bio'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      mobIDs: (json['mob_ids'] as List<dynamic>?)
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
      'bio': instance.bio,
      'avatar': instance.avatar,
      'mob_ids': instance.mobIDs,
      'push_token': instance.pushToken,
      'is_pro': instance.isPro,
      'accepted_terms': instance.acceptedTerms,
    };
