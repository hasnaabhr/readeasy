import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FontSizeProvider with ChangeNotifier {
  double _fontSize = 18.0; // Default to 18px

  double get fontSize => _fontSize;

  FontSizeProvider() {
    _loadFontSize();
  }

  _loadFontSize() async {
    final prefs = await SharedPreferences.getInstance();
    _fontSize = prefs.getDouble('fontSize') ?? 18.0; // Default to 18px if no preference is saved
    notifyListeners();
  }

  // Method to set font size
  setFontSize(double size) async {
    _fontSize = size;
    final prefs = await SharedPreferences.getInstance();
    prefs.setDouble('fontSize', _fontSize); // Persist the font size
    notifyListeners(); // Notify listeners to update the UI
  }
}
