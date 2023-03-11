import 'package:catelog_application/pages/Cart_Page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'cors/store.dart';
import 'pages/HomePage.dart';
import 'pages/LoginPage.dart';
import 'utils/routes.dart';
import 'widgets/Themes.dart';

void main() {
  runApp(VxState(store: MyStore(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Give app Dark Theme based on System Theme
      // Setting code if application gets theme
      themeMode: ThemeMode.system,

      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.DarkTheme(context),
      // Giving System Theme
      // Specify Theme
      // use brightness: Brightness.dark for Dark Theme
      // primarySwatch : adjust by color for Light Theme
      // themeMode: ThemeMode.dark,
      // theme: ThemeData(
      //     brightness: Brightness.dark, primarySwatch: Colors.deepPurple),

      initialRoute: MyRoute.homeRoute,
      routes: {
        MyRoute.homeRoute: (context) => const HomePage(),
        MyRoute.loginRoute: (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
        MyRoute.cartPage: (context) => const Cart(),
      },
    );
  }
}
