import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ThemeBloc {
  ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.black,
      textTheme: TextTheme(),
      buttonColor: Colors.black,
      backgroundColor: Colors.white);

  ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.white,
      textTheme: TextTheme(),
      buttonColor: Colors.white,
      backgroundColor: Colors.black);

  Stream<bool> get isDarkMode => _darkModeSubject.stream;
  Sink<bool> get setDarkMode => _darkModeSubject.sink;

  Stream<ThemeData> get theme => _themeSubject.stream;

  final _themeSubject = BehaviorSubject<ThemeData>();
  final _darkModeSubject = BehaviorSubject<bool>();

  ThemeBloc() {
    _darkModeSubject.sink.add(false);
    isDarkMode.listen((mode) {
      setThemeMode(darkMode: mode);
    });
  }

  setThemeMode({bool darkMode}) {
    if (darkMode) {
      _themeSubject.sink.add(darkTheme);
    } else {
      _themeSubject.sink.add(lightTheme);
    }
  }

  dispose() {
    _themeSubject.sink.close();
    _darkModeSubject.sink.close();
  }
}
