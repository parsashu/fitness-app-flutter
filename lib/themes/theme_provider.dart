import 'package:flutter/material.dart';
import 'package:improwave/themes/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  // Getter for the current theme data
  ThemeData get themeData => _themeData;

  // Setter for theme data with notification to listeners
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // Getter to check if the current theme is dark mode
  bool get isDarkMode => _themeData == darkMode;

  // Method to toggle between light and dark themes
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
