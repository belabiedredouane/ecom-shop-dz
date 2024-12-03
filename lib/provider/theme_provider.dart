import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  // Current theme mode
  ThemeMode _themeMode = ThemeMode.light;

  // Getter for theme mode
  ThemeMode get themeMode => _themeMode;

  // Setter for theme mode
  void toggleTheme(ThemeMode themeMode) async {
    _themeMode = themeMode ;
    notifyListeners();
    // Save to SharedPreferences
    //final prefs = await SharedPreferences.getInstance();
    //await prefs.setBool('isDarkMode', isDarkMode);
  }

  // Load theme mode from SharedPreferences
  /* Future<void> loadTheme() async {
    //final prefs = await SharedPreferences.getInstance();
    //final isDarkMode = prefs.getBool('isDarkMode') ?? false;
    _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  } */
}
