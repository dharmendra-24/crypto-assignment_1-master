import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.red),
    appBarTheme:
        const AppBarTheme(elevation: 0, backgroundColor: Colors.white));
ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xff15161a),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Color(0xff15161a),
    ));
