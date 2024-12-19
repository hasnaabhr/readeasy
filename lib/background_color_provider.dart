import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BackgroundColorProvider with ChangeNotifier {
  Color _backgroundColor = Colors.white;

  Color get backgroundColor => _backgroundColor;

  // Constructor that loads the saved background color from SharedPreferences
  BackgroundColorProvider() {
    _loadBackgroundColor();
  }

  _loadBackgroundColor() async {
    final prefs = await SharedPreferences.getInstance();
    int colorValue = prefs.getInt('backgroundColor') ?? Colors.white.value;
    _backgroundColor = Color(colorValue);
    notifyListeners(); // Notify listeners when color is loaded
  }

  // Method to update the background color and save it to SharedPreferences
  setBackgroundColor(Color color) async {
    _backgroundColor = color;
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('backgroundColor', color.value); // Save the color
    notifyListeners(); // Notify listeners to update the UI
  }
}
