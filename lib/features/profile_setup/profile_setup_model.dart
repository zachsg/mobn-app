import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_setup_model.freezed.dart';
part 'profile_setup_model.g.dart';

@freezed
class ProfileSetupModel with _$ProfileSetupModel {
  factory ProfileSetupModel({
    @Default('') String name,
    @Default('') String handle,
    @Default('') String avatar,
    @Default(false) bool loading,
    @Default('') String nameError,
    @Default('') String handleError,
  }) = _ProfileSetupModel;

  factory ProfileSetupModel.fromJson(Map<String, Object?> json) =>
      _$ProfileSetupModelFromJson(json);
}
