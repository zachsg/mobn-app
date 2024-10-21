import 'package:go_router/go_router.dart';

import 'features/auth/auth_view.dart';
import 'features/bottom_nav/bottom_nav_view.dart';
import 'features/home/home_view.dart';
import 'features/home/new_mob/new_mob_view.dart';
import 'features/learn/learn_view.dart';
import 'features/notifications/notifications_view.dart';
import 'features/profile/profile_view.dart';
import 'features/settings/settings_view.dart';
import 'features/splash/splash_view.dart';
import 'models/xmodels.dart';

final router = GoRouter(
  initialLocation: SplashView.routeName,
  routes: [
    GoRoute(
      path: SplashView.routeName,
      name: SplashView.routeName,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: AuthView.routeName,
      name: AuthView.routeName,
      builder: (context, state) => const AuthView(),
    ),
    GoRoute(
      path: BottomNavView.routeName,
      name: BottomNavView.routeName,
      builder: (context, state) => const BottomNavView(),
      routes: [
        GoRoute(
          path: HomeView.routeName,
          name: HomeView.routeName,
          builder: (context, state) => const HomeView(),
          routes: [
            GoRoute(
              path: ProfileView.routeName,
              name: ProfileView.routeName,
              builder: (context, state) => const ProfileView(),
              routes: [
                GoRoute(
                  path: SettingsView.routeName,
                  name: SettingsView.routeName,
                  builder: (context, state) => const SettingsView(),
                ),
              ],
            ),
            GoRoute(
              path: NotificationsView.routeName,
              name: NotificationsView.routeName,
              builder: (context, state) => const NotificationsView(),
            ),
            GoRoute(
              path: NewMobView.routeName,
              name: NewMobView.routeName,
              builder: (context, state) {
                final profile = state.extra as MProfileModel;
                return NewMobView(
                  profile: profile,
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: LearnView.routeName,
          name: LearnView.routeName,
          builder: (context, state) => const LearnView(),
        ),
      ],
    ),
  ],
);
