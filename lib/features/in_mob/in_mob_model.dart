import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/xmodels.dart';

part 'in_mob_model.freezed.dart';
part 'in_mob_model.g.dart';

@freezed
class InMobModel with _$InMobModel {
  factory InMobModel({
    @JsonKey(name: 'day_requested') required DateTime dayRequested,
    required MDayModel day,
    @Default(5) int minutes,
    @Default(false) bool loading,
    String? error,
  }) = _InMobModel;

  factory InMobModel.fromJson(Map<String, Object?> json) =>
      _$InMobModelFromJson(json);
}
