import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode appTheme = ThemeMode.light;

  MyProvider() {
    loadThemeFromPrefs();
  }

  void changeTheme(ThemeMode themeMode) async {
    appTheme = themeMode;
    notifyListeners();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('themeMode', themeMode == ThemeMode.light ? 'light' : 'dark');
  }

  void loadThemeFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? theme = prefs.getString('themeMode');
    if (theme != null) {
      appTheme = theme == 'light' ? ThemeMode.light : ThemeMode.dark;
      notifyListeners();
    }
  }
}
