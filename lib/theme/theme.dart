//This method returns the font sizes of the text theme for our app
import 'package:flutter/material.dart';

//There class holds all the colors for the app
class AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color darkGreen_0 = Color(0xFF001919);
  static const Color darkGreen_1 = Color(0xFF002424);
  static const Color darkGreen_2 = Color(0xFF003333);
  static const Color darkGreen_3 = Color(0xFF005858);
  static const Color cyanAccent = Color(0xFF02FFFF);
  static const Color negative = Color(0xFFBC0000);
  static const Color negative_2 = Color(0xFFDDB3B3);
  static const Color positive = Color(0xFF009533);
}

TextTheme _buildTextTheme() {
  return TextTheme(
    headline1: _style(
      96.0,
      FontWeight.normal,
    ),
    headline2: _style(60.0, FontWeight.bold),
    headline3: _style(36.0, FontWeight.bold),
    headline4: _style(48.0, null, fontFamily: 'Manrope-ExtraBold'),
    headline5: _style(22.0, FontWeight.w500),
    headline6: _style(18.0, FontWeight.w500),
    bodyText1: _style(18.0, FontWeight.normal),
    bodyText2: _style(16.0, FontWeight.normal),
    subtitle1: _style(14.0, FontWeight.normal),
    subtitle2: _style(12.0, FontWeight.w300),
    button: _style(18.0, FontWeight.normal),
    caption: _style(12.0, FontWeight.normal),
    overline: _style(16.0, FontWeight.normal),
  );
}

/* This method optimizes the code and using in text theme in order to
avoid repeating FontWeight and Fontsize */
TextStyle _style(double s, FontWeight? w, {String? fontFamily}) => TextStyle(
    fontSize: s,
    fontWeight: w ?? FontWeight.normal,
    fontFamily: fontFamily ?? 'Manrope-Regular');

class AppTheme {
  ThemeData get themeData {
    return ThemeData(
        textTheme: _buildTextTheme(),
        colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: AppColors.darkGreen_2,
            primaryContainer: AppColors.darkGreen_3,
            secondary: AppColors.darkGreen_2,
            background: AppColors.darkGreen_0,
            surface: AppColors.darkGreen_2,
            onBackground: AppColors.darkGreen_2,
            onSurface: AppColors.white,
            onError: AppColors.negative,
            onPrimary: AppColors.white,
            onSecondary: AppColors.white,
            error: AppColors.negative_2));
  }
}
