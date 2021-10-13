import 'package:dark_theme_implementation/models/dark_theme_prefrences.dart';
import 'package:flutter/material.dart';

//This class includes the prefrence class as an instance and sets the boolean value
//notifyListeners is used to notify any clients the object may have changed.

class DarkThemeProvider with ChangeNotifier {
  DarkThemePreferences darkThemePreferences = DarkThemePreferences();
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreferences.setDarkTheme(value);
    notifyListeners();
  }
}
