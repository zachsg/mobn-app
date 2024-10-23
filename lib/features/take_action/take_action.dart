import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/xmodels.dart';
import '../../services/database.dart';
import '../in_mob/in_mob.dart';
import 'take_action_model.dart';

part 'take_action.g.dart';

@riverpod
class TakeAction extends _$TakeAction {
  @override
  TakeActionModel build() => TakeActionModel(
        loading: true,
      );

  void setSeconds(int seconds) {
    state = state.copyWith(seconds: seconds);
  }

  void setPaused(bool paused) {
    state = state.copyWith(paused: paused);
  }

  Future<void> saveAction({
    required MProfileModel profile,
    required MMobModel mob,
    required int minutes,
  }) async {
    state = state.copyWith(loading: true);

    final today = DateTime.now();

    await ref.read(inMobProvider.notifier).loadDay(mob: mob, date: today);

    final day = ref.read(inMobProvider).day;

    final action = MActionModel(
      mateID: profile.id,
      date: today.subtract(Duration(minutes: minutes)),
      minutes: minutes,
      habitType: mob.habitType,
    );

    final dayToSave = day.copyWith(actions: [...day.actions, action]);

    final profileToSave =
        profile.copyWith(actions: [...profile.actions, action]);

    await Database.saveAction(
      mob: mob,
      profileToSave: profileToSave,
      dayToSave: dayToSave,
    );

    await ref.read(inMobProvider.notifier).loadDay(mob: mob, date: today);

    state = state.copyWith(loading: false);
  }
}
