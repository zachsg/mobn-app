import 'package:freezed_annotation/freezed_annotation.dart';

part 'm_mob_goal_model.freezed.dart';
part 'm_mob_goal_model.g.dart';

@freezed
class MMobGoalModel with _$MMobGoalModel {
  factory MMobGoalModel({
    @JsonKey(name: 'mate_id') required String mateID,
    @Default('') @JsonKey(name: 'mate_name') String mateName,
    @Default('') @JsonKey(name: 'mate_handle') String mateHandle,
    @Default('') @JsonKey(name: 'mate_avatar') String mateAvatar,
    @JsonKey(name: 'start_date') required DateTime startDate,
    required int minutes,
  }) = _MMobGoalModel;

  factory MMobGoalModel.fromJson(Map<String, Object?> json) =>
      _$MMobGoalModelFromJson(json);
}
