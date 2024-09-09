import 'package:flutter/material.dart';

const colorList = <Color>[
  Color(0xFF0C0F14), //- IG
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.yellow,
  Colors.pink,
  Colors.pinkAccent,
  Color(0xFF0d1114), //- Rd
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({
    this.isDarkMode = false,
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor < colorList.length,
            'Only selected 0 to 7 THANKS 💙');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorList[selectedColor],
        // --- --- --- Center AppBar Title
        appBarTheme: const AppBarTheme(
          centerTitle: false,
        ),
      );

  AppTheme copyWith({
    int? selectedColor,
    bool? isDarkMode,
  }) {
    return AppTheme(
      selectedColor: selectedColor ?? this.selectedColor,
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}
