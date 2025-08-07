import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  final SharedPreferences _prefs;
  static const String _themeKey = 'theme_mode';

  ThemeCubit(this._prefs) : super(ThemeMode.system);

  void loadTheme() {
    final themeString = _prefs.getString(_themeKey);
    if (themeString == 'light') {
      emit(ThemeMode.light);
    } else if (themeString == 'dark') {
      emit(ThemeMode.dark);
    } else {
      emit(ThemeMode.system);
    }
  }

  void setTheme(ThemeMode themeMode) {
    emit(themeMode);
    _prefs.setString(_themeKey, themeMode.name);
  }
}