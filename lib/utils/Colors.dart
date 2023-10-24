import 'dart:ui';
import 'package:flutter/material.dart';

class AppColors {
  // Using a private variable for dark mode state
  static bool _isDarkMode = true;

  static Color get primaryColor => _isDarkMode ? mainColor : lightModePrimary;
  static Color get secondaryColor => _isDarkMode ? darkModeSecondary : lightModeSecondary;
  static Color get textColor => _isDarkMode ? mainTextColor : lightTextColor;

  // Getter to retrieve the current mode state
  static bool get isDarkMode => _isDarkMode;

  // Setter to update the dark mode state
  static void setDarkMode(bool value) {
    _isDarkMode = value;
  }

  static const Color shadowColor = Color.fromRGBO(177, 203, 255, 1);
  
  // Dark mode colors
  static const Color mainColor = Color.fromARGB(255, 45, 45, 45);
  static const Color darkModeSecondary = Color.fromARGB(255, 0, 0, 0);
  static const Color mainTextColor = Color.fromARGB(255, 255, 255, 255);

  // Light mode colors
  static const Color lightModePrimary = Color.fromARGB(255, 255, 255, 255);
  static const Color lightModeSecondary = Color.fromARGB(255, 240, 240, 240);
  static const Color lightTextColor = Color.fromARGB(255, 26, 11, 28);
}
