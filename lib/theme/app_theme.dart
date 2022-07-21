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
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primaryColor)),

    // FloatingActionButtons.
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primaryColor),
    // ElevatedButtonTheme.
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: primaryColor, shape: const StadiumBorder(), elevation: 0)),

    // InputDecoratorTheme.

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primaryColor),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
    ),
  );

// ----------------------------- DARK THEME -----------------------------

  static const Color secondaryColor = Colors.deepOrangeAccent;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: secondaryColor,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(color: secondaryColor, elevation: 0));
}
