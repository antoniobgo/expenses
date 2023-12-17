import 'package:expenses/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorsScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

void main() {
  runApp(
    MaterialApp(
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
                  fontWeight: FontWeight.normal,
                  color: kColorsScheme.onSecondaryContainer,
                  fontSize: 14))),
      home: const Expenses(),
    ),
  );
}
