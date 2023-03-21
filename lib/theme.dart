import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.light().copyWith(primary: Colors.red),
  );
  static final darkTheme = ThemeData(
    colorScheme: ColorScheme.dark().copyWith(primary: Colors.black),
  );

  static var currentTheme = lightTheme;
}
