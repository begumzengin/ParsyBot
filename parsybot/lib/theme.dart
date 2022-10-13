import 'package:parsybot/constants.dart';
import 'package:flutter/material.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: cinnabar,
    scaffoldBackgroundColor: lightBackground,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: Colors.white),
  );
}

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
