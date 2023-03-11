import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        buttonColor: darkBluishColor,
        accentColor: creamColor,
        hintColor: darkBluishColor,
        errorColor: Vx.black,
        appBarTheme: AppBarTheme(
            color: Colors.deepPurple,
            elevation: 0.5,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: Theme.of(context).textTheme.titleLarge),
      );

  static ThemeData DarkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        canvasColor: darkCreamColor,
        cardColor: Vx.black,
        buttonColor: ExtradarkBluishColor,
        accentColor: creamColor,
        hintColor: creamColor,
        errorColor: creamColor,
        appBarTheme: AppBarTheme(
            color: Colors.deepPurple,
            elevation: 0.5,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: Theme.of(context).textTheme.titleLarge),
      );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Colors.deepPurple;
  static Color ExtradarkBluishColor = Vx.indigo500;
}
