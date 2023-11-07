import 'package:flutter/material.dart';

/// This class is used to define the theme of the app.
@immutable
final class AppTheme {
  /// This constructor is used to define the theme of the app.
  /// [_themeData] variable is initialized with [ThemeData.light()] method in
  /// this constructor.
  AppTheme() {
    _themeData = ThemeData.light();
  }

  late final ThemeData _themeData;

  /// This getter is used to get the current theme of the app.
  ThemeData get currentTheme => _themeData.copyWith(
        scaffoldBackgroundColor: Colors.grey.shade50,
        useMaterial3: true,
      );
}
