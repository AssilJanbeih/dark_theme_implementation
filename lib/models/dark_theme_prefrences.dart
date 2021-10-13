import 'package:shared_preferences/shared_preferences.dart';

//This class includes getter and setter for the theme value
// it awaits the shared prefrences package to get the needful instance.
class DarkThemePreferences {
  static const THEME_STATUS = "THEMESTATUS";

  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEME_STATUS, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(
          THEME_STATUS,
        ) ??
        false;
  }
}
