import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF9D01FF);

const List<Color> _colorThemes = [
  _customColor,
  Colors.black,
  Colors.blue,
  Colors.cyan,
  Colors.green,
  Colors.pink,
];

class AppTheme {
  final int selectorColor;

  AppTheme({
    this.selectorColor = 0,
  });

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectorColor],
      // brightness: Brightness.dark, // dark mode
    );
  }
}
