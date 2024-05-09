import 'package:flutter/material.dart';

ThemeData EnglishTheme = ThemeData(
  fontFamily: "Quicksand",
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(fontSize: 22),
    bodyMedium: TextStyle(
      fontSize: 18, // color: AppColors.defaultGrey
    ),
  ),
);

ThemeData arabicTheme = ThemeData(
  fontFamily: "Cairo",
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(fontSize: 20),
    bodyMedium: TextStyle(
      fontSize: 18,
      // color: AppColors.defaultGrey
    ),
  ),
);
