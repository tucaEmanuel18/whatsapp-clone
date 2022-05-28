import 'package:flutter/material.dart';
import 'package:whatsapp_clone/themes/colors.dart';

class CustomTheme{
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: white100,
    colorScheme: ColorScheme.light(),
    appBarTheme: const AppBarTheme(
      backgroundColor: tealGreen500,
      foregroundColor: white100,
    )
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: darkBlue900,
    colorScheme: ColorScheme.dark(),
      appBarTheme: const AppBarTheme(
        backgroundColor: darkBlue700,
        foregroundColor: grey500,
      )
  );
}