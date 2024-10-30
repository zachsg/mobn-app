import 'package:flutter/material.dart';

import 'helpers/constants.dart';
import 'router.dart';

class MobnApp extends StatelessWidget {
  const MobnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: appNameLabel,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          surface: backgroundColor,
          surfaceContainer: backgroundColor,
          surfaceContainerLow: backgroundColor,
        ),
        scaffoldBackgroundColor: backgroundColor,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}
