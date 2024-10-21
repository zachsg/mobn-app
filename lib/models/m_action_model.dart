import 'package:freezed_annotation/freezed_annotation.dart';

import 'm_habit_type.dart';

part 'm_action_model.freezed.dart';
part 'm_action_model.g.dart';

@freezed
class MActionModel with _$MActionModel {
  factory MActionModel({
    @JsonKey(name: 'mate_id') required String mateID,
    required DateTime date,
    required int minutes,
    @JsonKey(name: 'habit_type') required MHabitType habitType,
  }) = _MActionModel;

  factory MActionModel.fromJson(Map<String, Object?> json) =>
      _$MActionModelFromJson(json);
}
