import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300,  // Backgound
    primary: Colors.grey.shade800,
    tertiary: Colors.grey.shade500,  // Hint text
    onTertiaryFixedVariant: Colors.grey.shade600,
    tertiaryFixed: Colors.grey.shade700,
    onTertiary: Colors.blue,
    secondary: Colors.black,
    secondaryContainer: Colors.grey.shade200, // Textfield background
    outline: Colors.white,
    outlineVariant: Colors.grey.shade400,  
    error: const Color.fromARGB(255, 202, 23, 23),  // Error
  )
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: Colors.grey.shade800,
    tertiary: Colors.grey[600],
    onTertiaryFixedVariant: Colors.grey[700],
    tertiaryFixed: Colors.grey[800],
    onTertiary: Colors.blueAccent,
    secondary: Colors.white,
    outline: Colors.black,
    outlineVariant: Colors.grey.shade700,
    error: const Color.fromARGB(255, 202, 23, 23),
  )
);

