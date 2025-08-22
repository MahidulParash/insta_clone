import 'package:flutter/material.dart';

/// Monochromatic theme with blue as the main color
ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.white,
    primary: Colors.blue.shade600,
    secondary: Colors.blue.shade400,
    tertiary: Colors.blue.shade200,
    inversePrimary: Colors.blue.shade900,
  ),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.blue.shade600,
    elevation: 0,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.blue.shade600,
    foregroundColor: Colors.white,
  ),
);

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: Colors.black,
    primary: Colors.blue.shade400,
    secondary: Colors.blue.shade300,
    tertiary: Colors.blue.shade200,
    inversePrimary: Colors.white,
  ),
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Colors.blue.shade400,
    elevation: 0,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.blue.shade400,
    foregroundColor: Colors.black,
  ),
);
