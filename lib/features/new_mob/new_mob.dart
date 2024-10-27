import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobn/helpers/extensions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/xmodels.dart';
import '../../services/database.dart';
import 'new_mob_model.dart';

part 'new_mob.g.dart';

@Riverpod(keepAlive: true)
class NewMob extends _$NewMob {
  @override
  NewMobModel build() => NewMobModel(
        habitType: MHabitType.meditate,
        minutes: 10,
        loading: false,
      );

  void setHabit(MHabitType? habit) {
    if (habit != null) {
      state = state.copyWith(habitType: habit, loading: false, error: null);
    }
  }

  void setMinutes(int minutes) {
    if (minutes > 0) {
      state = state.copyWith(minutes: minutes, loading: false, error: null);
    }
  }

  void incrementMinutes() {
    state =
        state.copyWith(minutes: state.minutes + 5, loading: false, error: null);
  }

  void decrementMinutes() {
    if (state.minutes > 5) {
      state = state.copyWith(
          minutes: state.minutes - 5, loading: false, error: null);
    }
  }

  Future<void> createMob(MProfileModel profile) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      state = state.copyWith(error: 'Not authenticated');
      return;
    }

    state = state.copyWith(loading: true);

    final goal = MGoalModel(
      startDate: DateTime.now(),
      minutes: state.minutes,
      habitType: state.habitType,
    );

    var goals = profile.goals;

    List<MHabitType> existingHabits =
        goals.map((goal) => goal.habitType).toList();

    if (existingHabits.contains(goal.habitType)) {
      state = state.copyWith(
          loading: false,
          error:
              'You\'re already in a ${goal.habitType.name.habitDoing().toLowerCase()} mob.');
      return;
    } else {
      goals = [...goals, goal];
    }

    final updatedProfile = profile.copyWith(goals: goals);

    await Database.updateProfile(updatedProfile);

    final mobGoal = MMobGoalModel(
      mateID: user.uid,
      mateName: profile.name,
      mateHandle: profile.handle,
      mateAvatar: profile.avatar,
      startDate: DateTime.now(),
      minutes: state.minutes,
    );

    final mob = MMobModel(
      mateIDs: [updatedProfile.id],
      goals: [mobGoal],
      habitType: state.habitType,
    );

    await Database.createMob(mob);

    state = state.copyWith(loading: false);
  }
}
