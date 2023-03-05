import 'package:flutter/material.dart';
import 'pages/HomePage.dart';
import 'pages/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Give app Dark Theme based on System Theme
      // Setting code if application gets theme
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),

      // Giving System Theme
      // Specify Theme
      // use brightness: Brightness.dark for Dark Theme
      // primarySwatch : adjust by color for Light Theme
      // themeMode: ThemeMode.dark,
      // theme: ThemeData(
      //     brightness: Brightness.dark, primarySwatch: Colors.deepPurple),

      initialRoute: "/home",
      routes: {
        MyRoute.homeRoute: (context) => const HomePage(),
        MyRoute.loginRoute: (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
      },
    );
  }
}
