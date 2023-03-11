import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
  final _formKey = GlobalKey<FormState>();

// Moving Main Core in Method

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoute.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        iconTheme: IconThemeData(color: context.theme.hintColor),
      ),
      body: Material(
          color: context.canvasColor,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/app_logo.png",
                    fit: BoxFit.cover,
                  ),
                  Center(
                    child: Text(
                      "Welcome $name",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: context.theme.hintColor),
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
                            style: TextStyle(color: context.theme.hintColor),
                            decoration: InputDecoration(
                              labelText: "Username",
                              hintText: "Enter Your Username : ",
                            ),
// Validation

                            validator: (String? value) {
                              if (value != null && value.isEmpty) {
                                return "Enter Valid Username";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              name = value;
                              setState(() {});
                            }),
                        const SizedBox(height: 20.0),
                        TextFormField(
                          style: TextStyle(color: context.theme.hintColor),
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Password",
                              hintText: "Enter Your Password : ",
                              iconColor: context.theme.hintColor),
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return "Enter Valid Password";
                            } else if (value != null && value.length < 6) {
                              return "Password Length Should be Greater Than 6";
                            }
                            return null;
                          },
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 40.0),

                  Material(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(
                      changeButton ? 50 : 8,
                    ),
                    child: InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
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
                    ),
                  )
                  /* ,
                   ElevatedButton(
                    onPressed: () =>
                        {Navigator.pushNamed(context, MyRoute.homeRoute)},
                    style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                    child: const Text("Login"),
                  ) */
                ],
              ),
            ),
          )),
    );
  }
}
