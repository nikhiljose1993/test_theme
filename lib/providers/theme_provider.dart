import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_theme/theme/theme.dart';

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier() : super(lightMode);

  bool toggleTheme() {
    if (state == lightMode) {
      state = darkMode;
      return false;
    } else {
      state = lightMode;
      return true;
    }
  }
}

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeData>(
  (ref) => ThemeNotifier(),
);
