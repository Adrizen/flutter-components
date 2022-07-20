import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Primary app color.
      primaryColor: primaryColor,

      // Appbar theme.
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(color: primaryColor, elevation: 0),

      // Text button theme.
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primaryColor)));

  static const Color secondaryColor = Colors.deepOrangeAccent;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: secondaryColor,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(color: secondaryColor, elevation: 0));
}