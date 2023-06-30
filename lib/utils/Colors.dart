import 'dart:ui';
import 'package:flutter/material.dart';

class AppColors {
  static bool isDarkMode = true; // Track the current mode

  static Color get primaryColor {
    return isDarkMode ? mainColor : lightModePrimary;
  }

  static Color get secondaryColor {
    return isDarkMode ? darkModeSecondary : lightModeSecondary;
  }

  static Color get textColor {
    return isDarkMode ? mainTextColor : lightTextColor;
  }

  static setDarkMode(bool value) {
    isDarkMode = value;
  }

  static const Color shadowColor = Color.fromARGB(255, 47, 47, 47);
  // Dark mode colors
  static const Color mainColor = Color.fromARGB(255, 33, 33, 33);
  static const Color darkModeSecondary = Color.fromARGB(255, 0, 0, 0);
  static const Color mainTextColor = Color.fromARGB(255, 255, 255, 255);

  // Light mode colors
  static const Color lightModePrimary = Color.fromARGB(255, 255, 255, 255);
  static const Color lightModeSecondary = Color.fromARGB(255, 255, 255, 255);
  static const Color lightTextColor = Color.fromARGB(255, 0, 0, 0);

  // Rest of the color constants...
}
