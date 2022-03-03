import 'package:flutter/material.dart';

Color mint = const Color(0xFF3EB489);
Color eerieBlack = const Color(0xFF1B1B1B);
Color platinum = const Color(0xFFEBEBEB);
Color raspberry = const Color(0xFFC33149);
Color rhythm = const Color(0xFF777696);

final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    backgroundColor: platinum,
    primaryColor: mint,
    textTheme: TextTheme(
        headlineLarge: TextStyle(
            fontSize: 48, color: eerieBlack, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(fontSize: 24, color: eerieBlack),
        labelMedium: TextStyle(fontSize: 24, color: mint)));

final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: eerieBlack,
    primaryColor: mint,
    textTheme: TextTheme(
        headlineLarge: TextStyle(
            fontSize: 48, color: platinum, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(fontSize: 24, color: platinum),
        labelMedium: TextStyle(fontSize: 24, color: mint)));
