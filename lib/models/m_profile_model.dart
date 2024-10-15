import 'package:freezed_annotation/freezed_annotation.dart';

part 'm_profile_model.freezed.dart';
part 'm_profile_model.g.dart';

@freezed
class MProfileModel with _$MProfileModel {
  factory MProfileModel({
    required String id,
    @Default('') String name,
    @Default('') String email,
    @Default('') String handle,
    @Default('') String bio,
    @Default('') String avatar,
    @Default([]) @JsonKey(name: 'mob_ids') List<String> mobIDs,
    @Default('') @JsonKey(name: 'push_token') String pushToken,
    @Default(false) @JsonKey(name: 'is_pro') bool isPro,
    @Default(false) @JsonKey(name: 'accepted_terms') bool acceptedTerms,
  }) = _MProfileModel;

  factory MProfileModel.fromJson(Map<String, Object?> json) =>
      _$MProfileModelFromJson(json);
}
