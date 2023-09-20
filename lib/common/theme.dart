import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
  useMaterial3: true,

// Define the default brightness and colors.
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.indigo,
    brightness: Brightness.light,
  ),

// Define the default `TextTheme`. Use this to specify the default
// text styling for headlines, titles, bodies of text, and more.

  appBarTheme: const AppBarTheme(
    elevation: 4,
    centerTitle: true,
    backgroundColor: Colors.indigo,
    foregroundColor: Colors.white,
    // color: Colors.indigo,
  ),
// Define the default brightness and colors.

// Define the default `TextTheme`. Use this to specify the default
// text styling for headlines, titles, bodies of text, and more.
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.roboto(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 20,
      color: Colors.white,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 16,
      color: Colors.white,
    ),
    bodySmall: GoogleFonts.roboto(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 10,
      color: Colors.white,
    ),
    displayLarge: GoogleFonts.openSans(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 20,
      color: Colors.white,
    ),
    displayMedium: GoogleFonts.openSans(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 16,
      color: Colors.white,
    ),
    displaySmall: GoogleFonts.openSans(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 12,
      color: Colors.white,
    ),
  ),
  listTileTheme: ListTileThemeData(
    textColor: Colors.white,
    titleTextStyle: GoogleFonts.roboto(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 20,
      color: Colors.white,
    ),
    subtitleTextStyle: GoogleFonts.roboto(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: 20,
        color: Colors.white),
    tileColor: Colors.indigo,
    shape: RoundedRectangleBorder(
      side: BorderSide(width: 2),
      borderRadius: BorderRadius.circular(24),
    ),
  ),
);
