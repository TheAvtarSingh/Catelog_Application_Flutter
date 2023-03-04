import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final days = 30;
  final name = "Avtar";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Catelog Application",
        ),
      ),
      body: Center(child: Text("Welcome to $days of Flutter by $name")),
      drawer: const Drawer(),
    );
  }
}
