import 'package:flutter/material.dart';
import 'colors.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: background,
  fontFamily: 'Quicksand',
  colorScheme: _colorScheme,
  brightness: Brightness.light
);
ThemeData darkTheme = ThemeData();

ColorScheme _colorScheme = const ColorScheme(brightness: Brightness.light,
    primary: primary, onPrimary: Colors.black87, secondary: primaryLight,
    onSecondary: Colors.black87, error: Colors.red, onError: Colors.white,
    background: Colors.red, onBackground: Colors.black, surface: Colors.red,
    onSurface: Colors.black87);