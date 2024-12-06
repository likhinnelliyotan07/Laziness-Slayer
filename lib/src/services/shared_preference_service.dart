import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefServices {
  static late SharedPreferences _sharedPreferences;
  final String _locale = "localeKey";
  final String _selectedTheme = "selectedThemeKey";

  final String _isFirstInstall = "isFirstInstall";
  final String _isLoggedIn = "isLoggedIn";

  //making sharedPreference synchronously
  static Future<void> initializeSharedPref() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  void clearSharedPref() {
    final String tempLocale = getLocale;
    final bool tempInstall = isFirstInstall;
    _sharedPreferences.clear();
    setLocale(tempLocale);
    setFirstInstall(tempInstall);
  }

// set user logged in
  void setLoggedIn() {
    _sharedPreferences.setBool(_isLoggedIn, true);
  }

//checking whether user is logged in
  bool get isLoggedIn => _sharedPreferences.getBool(_isLoggedIn) ?? false;

  //set locale language code
  void setLocale(String value) => _sharedPreferences.setString(_locale, value);

  //get locale language code
  String get getLocale => _sharedPreferences.getString(_locale) ?? 'en';
  String? get getLocaleCode => _sharedPreferences.getString(_locale);

  //set app theme
  void setAppTheme(String theme) =>
      _sharedPreferences.setString(_selectedTheme, theme);

  //get app theme
  String get getAppTheme =>
      _sharedPreferences.getString(_selectedTheme) ?? ThemeMode.system.name;

  //check whether first install or not
  bool get isFirstInstall =>
      _sharedPreferences.getBool(_isFirstInstall) ?? true;

  //set first install
  void setFirstInstall(bool value) =>
      _sharedPreferences.setBool(_isFirstInstall, value);
}
