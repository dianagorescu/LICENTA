import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  scaffoldBackgroundColor: Colors.blue,
  colorScheme: ColorScheme.light(
      surface: Colors.grey.shade500,
      primary: Colors.grey.shade800,
      secondary: Colors.grey.shade300,
      tertiary: Colors.white,
    inversePrimary: Colors.grey.shade900,
  ),
);
