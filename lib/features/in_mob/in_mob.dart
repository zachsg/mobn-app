import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../models/xmodels.dart';
import '../../services/database.dart';
import 'in_mob_model.dart';

part 'in_mob.g.dart';

@riverpod
class InMob extends _$InMob {
  @override
  InMobModel build() => InMobModel(
        dayRequested: DateTime.now(),
        day: MDayModel(date: DateTime.now()),
        loading: true,
      );

  Future<void> loadDay({required MMobModel mob, required DateTime date}) async {
    final day = await Database.loadDayForDate(mob: mob, date: date);

    state = state.copyWith(day: day, loading: false);
  }

  void setDayRequested(DateTime date) {
    state = state.copyWith(dayRequested: date, loading: true);
  }

  void setMinutes(int minutes) {
    state = state.copyWith(minutes: minutes);
  }
}
