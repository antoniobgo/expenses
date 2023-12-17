import 'package:expenses/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorsScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorsScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorsScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorsScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorsScheme.primaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorsScheme,
        appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorsScheme.onPrimaryContainer,
            foregroundColor: kColorsScheme.primaryContainer),
        cardTheme: const CardTheme().copyWith(
          color: kColorsScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorsScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kColorsScheme.onSecondaryContainer,
                  fontSize: 16),
            ),
      ),
      themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
