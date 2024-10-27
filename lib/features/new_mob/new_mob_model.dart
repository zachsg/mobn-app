import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/xmodels.dart';

part 'new_mob_model.freezed.dart';
part 'new_mob_model.g.dart';

@freezed
class NewMobModel with _$NewMobModel {
  factory NewMobModel({
    @JsonKey(name: 'habit_type') required MHabitType habitType,
    required int minutes,
    @Default([]) List<MProfileModel> mates,
    @Default(false) bool loading,
    String? error,
  }) = _NewMobModel;

  factory NewMobModel.fromJson(Map<String, Object?> json) =>
      _$NewMobModelFromJson(json);
}
