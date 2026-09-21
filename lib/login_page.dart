import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const new({super.key});

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
    Text("Welcome to Application "+statusLogin, style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 24, fontWeight: FontWeight.bold)),
    Container(
      margin: EdgeInsets.all(16.0),
      child: TextField(
        controller: txtUsername,
        decoration: InputDecoration(
          labelText: 'Username',
          hintText: 'Enter your username',
          border: OutlineInputBorder(),
        ),
       ),
    ),

    Container(
      margin: EdgeInsets.all(16.0),
      child: TextField(
        controller: txtPassword,
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Enter your password',
          border: OutlineInputBorder(),
        ),
      ),
    ),
    
    SizedBox(height: 20),
    ElevatedButton(
      onPressed: () {

        setState(() {
        String username = txtUsername.text.toString();
        String password = txtPassword.text.toString();
        if(username == "admin" && password == "admin") {
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
      child: Text('Login'),
    ),
  ],
),
    );
  }
}