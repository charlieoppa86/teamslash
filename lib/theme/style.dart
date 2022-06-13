import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var theme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 1,
        centerTitle: false,
        actionsIconTheme: IconThemeData(color: darkHeaderClr)),
    textTheme: GoogleFonts.getTextTheme("IBM Plex Sans KR"));

const Color bluishClr = Color(0xFF055CF5);
const Color yelloishClr = Color(0xFFFFB746);
const Color mainClr = Color(0xFF1A1C1E);
const Color textClr = Color(0xFF7A7A7A);
const Color bgClr = Color(0xFFFFFFFF);
const Color bgImgClr = Color(0xFFE9E9E9);
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 1,
          centerTitle: false,
          actionsIconTheme: IconThemeData(color: darkHeaderClr)),
      textTheme: GoogleFonts.getTextTheme("IBM Plex Sans KR"),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.white,
      brightness: Brightness.light);

  static final dark = ThemeData(
      textTheme: GoogleFonts.getTextTheme("IBM Plex Sans KR"),
      appBarTheme: AppBarTheme(
          color: darkHeaderClr,
          backgroundColor: darkHeaderClr,
          titleTextStyle: TextStyle(color: bgImgClr)),
      backgroundColor: darkGreyClr,
      scaffoldBackgroundColor: darkHeaderClr,
      primaryColor: darkGreyClr,
      brightness: Brightness.dark);
}
