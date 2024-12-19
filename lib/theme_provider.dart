import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UiProvider extends ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  late SharedPreferences storage;

  // Custom dark theme
  final darkTheme = ThemeData(
    primaryColor: Colors.black12,
    brightness: Brightness.dark,
    primaryColorDark: Colors.black12,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.black, // Background for dark mode
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black, // Dark background
      selectedItemColor: Color(0xffE76C00),
      unselectedItemColor: Colors.grey,
    ),
  );

  // Custom light theme
  final lightTheme = ThemeData(
    primaryColor: Colors.white,
    brightness: Brightness.light,
    primaryColorDark: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white, // Background for light mode
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white, // Light background (white)
      selectedItemColor: Color(0xffE76C00),
      unselectedItemColor: Colors.grey,
    ),
  );

  // Toggle dark mode
  changeTheme() {
    _isDark = !_isDark;

    // Save the value to shared preferences
    storage.setBool("isDark", _isDark);
    notifyListeners();
  }

  // Init method of provider
  init() async {
    storage = await SharedPreferences.getInstance();
    _isDark = storage.getBool("isDark") ?? false;
    notifyListeners();
  }
}
