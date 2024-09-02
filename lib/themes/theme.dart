import 'package:flutter/material.dart';

// Light theme
ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300,  // Backgound 
    primary: Colors.grey.shade800,
    primaryContainer: Colors.white,  // Containers
    tertiary: Colors.grey.shade500,  // Hint text
    onTertiaryFixedVariant: Colors.grey.shade600,
    tertiaryFixed: Colors.grey.shade700,
    onTertiary: Colors.blue,
    secondary: Colors.black,
    onSecondary: Colors.grey,
    secondaryContainer: Colors.grey.shade200, // Textfield background
    outline: Colors.white,  // Boxes
    outlineVariant: Colors.grey.shade400,  
    error: const Color.fromARGB(255, 202, 23, 23),  // Error
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey.shade300),  // Black backgroung
    displayMedium: TextStyle(fontSize: 44.0, fontWeight: FontWeight.bold, color: Colors.grey.shade900),
    displaySmall: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold, color: Colors.grey.shade900),
    headlineLarge: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.grey.shade900),
    headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.grey.shade900),
    headlineSmall: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.grey.shade900),
    titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey.shade900),
    titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey.shade900),
    titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.grey.shade900),
    bodyLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.normal, color: Colors.grey.shade900),
    bodyMedium: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.grey.shade900),
    bodySmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey.shade900),
    labelLarge: TextStyle(fontSize: 22.0, fontWeight: FontWeight.normal, color: Colors.grey.shade500),
    labelMedium: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.grey.shade600),
    labelSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey.shade500),
  ),
);



// Dark theme
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: Colors.grey.shade800,
    primaryContainer: const Color.fromARGB(255, 42, 45, 59),
    tertiary: Colors.grey.shade600,  // Hint text
    onTertiaryFixedVariant: Colors.grey[700],
    tertiaryFixed: Colors.grey[800],
    onTertiary: Colors.blueAccent,
    secondary: const Color.fromARGB(255, 42, 45, 59),
    outline: const Color.fromARGB(255, 42, 45, 59),
    outlineVariant: Colors.grey.shade700,   
    error: const Color.fromARGB(255, 207, 88, 88),
  ),
  
  textTheme: TextTheme(
    displayLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey.shade300),
    displayMedium: TextStyle(fontSize: 44.0, fontWeight: FontWeight.bold, color: Colors.grey.shade200),
    displaySmall: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold, color: Colors.grey.shade200),
    headlineLarge: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.grey.shade200),
    headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.grey.shade200),
    headlineSmall: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.grey.shade200),
    titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey.shade200),
    titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey.shade200),
    titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.grey.shade200),
    bodyLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.normal, color: Colors.grey.shade200),
    bodyMedium: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.grey.shade200),
    bodySmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey.shade200),
    labelLarge: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.grey.shade600),
    labelMedium: TextStyle(fontSize: 22.0, fontWeight: FontWeight.normal, color: Colors.grey.shade600),
    labelSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey.shade600),
  ),
);

