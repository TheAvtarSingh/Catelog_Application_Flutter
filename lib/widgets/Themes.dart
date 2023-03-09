import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
            color: Colors.deepPurple,
            elevation: 0.5,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: Theme.of(context).textTheme.titleLarge),
      );

  static ThemeData DarkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
