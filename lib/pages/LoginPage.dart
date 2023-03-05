import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Material(
          child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20.0),
          // for space
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter Your Username : "),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Your Password : "),
                )
              ],
            ),
          ),

          SizedBox(height: 20.0),

          ElevatedButton(
            onPressed: () => {print("Login")},
            child: Text("Login"),
            style: TextButton.styleFrom(),
          )
        ],
      )),
    );
  }
}
