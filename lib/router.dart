import 'package:go_router/go_router.dart';

import 'features/auth/auth_view.dart';
import 'features/bottom_nav/bottom_nav_view.dart';
import 'features/home/home_view.dart';
import 'features/learn/learn_view.dart';
import 'features/notifications/notifications_view.dart';
import 'features/profile/profile_view.dart';
import 'features/settings/settings_view.dart';
import 'features/splash/splash_view.dart';

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
            ),
            GoRoute(
              path: NotificationsView.routeName,
              name: NotificationsView.routeName,
              builder: (context, state) => const NotificationsView(),
            ),
          ],
        ),
        GoRoute(
          path: LearnView.routeName,
          name: LearnView.routeName,
          builder: (context, state) => const LearnView(),
        ),
        GoRoute(
          path: SettingsView.routeName,
          name: SettingsView.routeName,
          builder: (context, state) => const SettingsView(),
        )
      ],
    ),
  ],
);
