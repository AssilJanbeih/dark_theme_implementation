import 'package:shared_preferences/shared_preferences.dart';

//This class includes getter and setter for the theme value
// it awaits the shared prefrences package to get the needful instance.
class DarkThemePreferences {
  static const theme_status = "THEMESTATUS";

  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(theme_status, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(
          theme_status,
        ) ??
        false;
  }
}
