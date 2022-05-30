import 'package:flutter/material.dart';
import 'package:whatsapp_clone/themes/colors.dart';

class CustomTheme{
  static ThemeData lightTheme = ThemeData(
    // primarySwatch: Colors.teal,
    // scaffoldBackgroundColor: white100,
    colorScheme: _lightColorScheme,
    // appBarTheme: const AppBarTheme(
    //   backgroundColor: tealGreen500,
    //   foregroundColor: white100,
    // )
  );

  static ThemeData darkTheme = ThemeData(
    // scaffoldBackgroundColor: darkBlue800,
    // primarySwatch: Colors.blueGrey,
    colorScheme: _darkColorScheme,
    // colorScheme: ColorScheme.dark(),
    // appBarTheme: const AppBarTheme(
    //   backgroundColor: darkBlue500,
    //   foregroundColor: grey500,
    // )
  );



  static const ColorScheme _lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: tealGreen500,
    primaryContainer: white100,
    primaryVariant: tealGreen300,
    onPrimary: white100,
    secondary: tealGreen100,
    onSecondary: tealGreen100, 
    background: white100,
    onBackground: tealGreen500,
    error: Colors.red,
    onError: white100, 
    surface: tealGreen100, 
    onSurface: darkBlue500, 
    tertiary: grey500,
    onTertiary: grey100,
  );


  static const ColorScheme _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: darkBlue500,
    primaryContainer: tealGreen500,
    primaryVariant: grey500,
    onPrimary:grey500,
    secondary: tealGreen500,
    onSecondary: white100, 
    background: darkBlue800,
    onBackground: tealGreen500,
    error: white100,
    onError: white100, 
    surface: darkBlue500, 
    onSurface: white100, 
    tertiary: grey500,
    onTertiary: darkBlue500,
  );
}