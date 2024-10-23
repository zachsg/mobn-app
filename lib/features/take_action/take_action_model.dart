import 'package:freezed_annotation/freezed_annotation.dart';

part 'take_action_model.freezed.dart';
part 'take_action_model.g.dart';

@freezed
class TakeActionModel with _$TakeActionModel {
  factory TakeActionModel({
    @Default(0) int seconds,
    @Default(false) bool paused,
    @Default(false) bool loading,
  }) = _TakeActionModel;

  factory TakeActionModel.fromJson(Map<String, Object?> json) =>
      _$TakeActionModelFromJson(json);
}
