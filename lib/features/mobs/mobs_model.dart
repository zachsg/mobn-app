import 'package:freezed_annotation/freezed_annotation.dart';

part 'mobs_model.freezed.dart';
part 'mobs_model.g.dart';

@freezed
class MobsModel with _$MobsModel {
  factory MobsModel({
    @Default(false) bool loading,
    String? error,
  }) = _MobsModel;

  factory MobsModel.fromJson(Map<String, Object?> json) =>
      _$MobsModelFromJson(json);
}
