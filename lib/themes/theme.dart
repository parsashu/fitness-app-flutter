import 'package:flutter/material.dart';

// Light theme
ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  tabBarTheme: const TabBarTheme(splashFactory: NoSplash.splashFactory),
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300,  // Backgound 
    surfaceBright: Colors.white,
    primary: Colors.grey.shade800,
    primaryContainer: Colors.white,  // Containers
    tertiary: Colors.grey.shade500,  // Hint text
    tertiaryContainer: Colors.grey.shade200,  // Search bar
    onTertiaryFixedVariant: Colors.grey.shade600,
    tertiaryFixed: Colors.grey.shade700,
    tertiaryFixedDim: Colors.grey.shade700,  // Text with surface background
    onTertiary: Colors.blue,  // Links
    secondary: Colors.black,
    onSecondary: Colors.grey,
    secondaryContainer: Colors.grey.shade200, // Textfield background
    secondaryFixed: Colors.grey.shade100,
    outline: Colors.white,  // Boxes
    outlineVariant: Colors.grey.shade400,  
    shadow: Colors.grey.shade200,  // App bar shadow
    error: const Color.fromARGB(255, 202, 23, 23),  // Error
    
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey.shade300),  // Black backgroung
    displayMedium: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.grey.shade500),  // Hint text
    displaySmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.grey.shade600), // Label
    headlineLarge: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.grey.shade900),
    headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.grey.shade900),
    headlineSmall: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.grey.shade900),
    titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey.shade900),
    titleMedium: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.grey.shade900),  // verify page
    titleSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey.shade900),
    bodyLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.normal, color: Colors.grey.shade900),
    bodyMedium: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.grey.shade900),
    bodySmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.grey.shade600),  // bio
    labelLarge: TextStyle(fontSize: 22.0, fontWeight: FontWeight.normal, color: Colors.grey.shade500),
    labelMedium: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.grey.shade600),
    labelSmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.grey.shade500),
  ),
);


// Dark theme
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  tabBarTheme: const TabBarTheme(splashFactory: NoSplash.splashFactory),
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    surfaceBright: Colors.grey.shade900,
    primary: Colors.grey.shade800,
    primaryContainer: Colors.grey.shade800,
    tertiary: Colors.grey.shade600,  // Hint text
    tertiaryContainer: Colors.grey.shade800,  // Search bar
    onTertiaryFixedVariant: Colors.grey.shade700,
    tertiaryFixed: Colors.grey.shade800,
    tertiaryFixedDim: Colors.grey.shade500,  // Text with surface background
    onTertiary: const Color.fromARGB(255, 63, 127, 237),  // Links
    secondary: Colors.grey.shade300,
    secondaryFixed: Colors.grey.shade900,
    outline: Colors.grey.shade800,
    outlineVariant: Colors.grey.shade700,   
    shadow: Colors.grey.shade600,  // App bar shadow
    error: const Color.fromARGB(255, 207, 88, 88),
  ),
  
  textTheme: TextTheme(
    displayLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey.shade400),
    displayMedium: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.grey.shade600),
    displaySmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.grey.shade400),
    headlineLarge: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.grey.shade400),
    headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.grey.shade400),
    headlineSmall: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.grey.shade400),
    titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey.shade400),
    titleMedium: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.grey.shade400),
    titleSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey.shade400),
    bodyLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.normal, color: Colors.grey.shade400),
    bodyMedium: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.grey.shade400),
    bodySmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.grey.shade500),
    labelLarge: TextStyle(fontSize: 22.0, fontWeight: FontWeight.normal, color: Colors.grey.shade600),
    labelMedium: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.grey.shade600),
    labelSmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.grey.shade600),
  ),
);

