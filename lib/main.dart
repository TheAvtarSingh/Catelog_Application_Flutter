import 'package:flutter/material.dart';
import 'pages/HomePage.dart';
import 'pages/LoginPage.dart';

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
      theme: ThemeData(primarySwatch: Colors.deepPurple),

      // Giving System Theme
      // Specify Theme
      // use brightness: Brightness.dark for Dark Theme
      // primarySwatch : adjust by color for Light Theme
      // themeMode: ThemeMode.dark,
      // theme: ThemeData(
      //     brightness: Brightness.dark, primarySwatch: Colors.deepPurple),

      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/home": (context) => HomePage(),
        "/Login": (context) => LoginPage(),
      },
    );
  }
}
