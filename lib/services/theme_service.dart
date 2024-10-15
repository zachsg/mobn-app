import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeService with ChangeNotifier {
  final SharedPreferences _prefs;
  ThemeService(this._prefs, this.theme);

  static const _themeKey = 'theme';

  ThemeMode theme;

  ThemeMode themeMode() {
    final themeValue = _prefs.getInt(_themeKey);
    if (themeValue == null) return ThemeMode.system;

    return ThemeMode.values[themeValue];
  }

  Future<void> updateThemeMode(ThemeMode theme) async {
    await _prefs.setInt(_themeKey, theme.index);

    this.theme = theme;

    notifyListeners();
  }
}
