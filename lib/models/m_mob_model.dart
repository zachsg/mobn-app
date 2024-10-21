import 'package:freezed_annotation/freezed_annotation.dart';

import 'm_habit_type.dart';
import 'm_mob_goal_model.dart';

part 'm_mob_model.freezed.dart';
part 'm_mob_model.g.dart';

@freezed
class MMobModel with _$MMobModel {
  @JsonSerializable(explicitToJson: true)
  factory MMobModel({
    @JsonKey(name: 'mate_ids') required List<String> mateIDs,
    required List<MMobGoalModel> goals,
    @JsonKey(name: 'habit_type') required MHabitType habitType,
  }) = _MMobModel;

  factory MMobModel.fromJson(Map<String, Object?> json) =>
      _$MMobModelFromJson(json);
}
