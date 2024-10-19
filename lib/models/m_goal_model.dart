import 'package:freezed_annotation/freezed_annotation.dart';

import 'm_habit_type.dart';

part 'm_goal_model.freezed.dart';
part 'm_goal_model.g.dart';

@freezed
class MGoalModel with _$MGoalModel {
  factory MGoalModel({
    @JsonKey(name: 'start_date') required DateTime startDate,
    required int minutes,
    @JsonKey(name: 'habit_type') required MHabitType habitType,
  }) = _MGoalModel;

  factory MGoalModel.fromJson(Map<String, Object?> json) =>
      _$MGoalModelFromJson(json);
}
