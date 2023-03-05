import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
// Convert to Stateful Widget
// Create Variable
  var name = "";

//  Make an onchange method
// to render agin call setstate method

// Creating a Button from Conatiner

// Craeting an Animation
// MAKE variable
// change container to ANimateDdContainer
// Set Duration
// set state in onTap
// Make conditional Statement
/* color: changeButton
                            ? Colors.deepPurple
                            : Colors.deepOrange ,*/
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Material(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
                Center(
                  child: Text(
                    "Welcome $name",
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20.0),
                // for space
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: const InputDecoration(
                              labelText: "Username",
                              hintText: "Enter Your Username : "),
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          }),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            labelText: "Password",
                            hintText: "Enter Your Password : "),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 40.0),

                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoute.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(
                          changeButton ? 50 : 8,
                        )),
                    child: changeButton
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                  ),
                )

                /*  ElevatedButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, MyRoute.homeRoute)},
                  style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                  child: const Text("Login"),
                ) */
              ],
            ),
          )),
    );
  }
}
