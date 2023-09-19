import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonMethod {
  ThemeData themeData = ThemeData(
    useMaterial3: true,

// Define the default brightness and colors.
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.purple,
// ···
      brightness: Brightness.dark,
    ),

// Define the default `TextTheme`. Use this to specify the default
// text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      displayLarge: const TextStyle(
        fontSize: 72,
        fontWeight: FontWeight.bold,
      ),
// ···
      titleLarge: GoogleFonts.oswald(
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
      bodyMedium: GoogleFonts.merriweather(),
      displaySmall: GoogleFonts.pacifico(),
    ),
  );
}
