import 'package:flutter/material.dart';

import 'component/custom_button.dart';
import 'component/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Column(
        children: [
          Text(
            "Welcome to Application " + statusLogin,
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: CustomTextfield(
              myHint: 'Enter your username',
              txtController: txtUsername,
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: CustomTextfield(
              myHint: 'Enter your password',
              txtController: txtPassword,
            ),
          ),
          SizedBox(height: 20),
          CustomButton(
            text: 'Login',
            onPressed: () {
              setState(() {
                String username = txtUsername.text.toString();
                String password = txtPassword.text.toString();
                if (username == "admin" && password == "admin") {
                  setState(() {
                    statusLogin = "Login Success";
                    print('Login Success');
                  });
                } else {
                  setState(() {
                    statusLogin = "Login Failed";
                    print('Login Failed');
                  });
                }
              });

              print('Login button pressed');
            },
          ),
        ],
      ),
    );
  }
}