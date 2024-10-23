import 'package:freezed_annotation/freezed_annotation.dart';

import 'm_action_model.dart';

part 'm_day_model.freezed.dart';
part 'm_day_model.g.dart';

@freezed
class MDayModel with _$MDayModel {
  @JsonSerializable(explicitToJson: true)
  factory MDayModel({
    required DateTime date,
    @Default([]) List<MActionModel> actions,
  }) = _MDayModel;

  factory MDayModel.fromJson(Map<String, Object?> json) =>
      _$MDayModelFromJson(json);
}
