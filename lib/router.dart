import 'package:go_router/go_router.dart';

import 'features/auth/auth_view.dart';
import 'features/home/home_view.dart';
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
      path: HomeView.routeName,
      name: HomeView.routeName,
      builder: (context, state) => const HomeView(),
    ),
  ],
);
