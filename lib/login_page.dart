import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controllers/login_page_controler.dart';


import 'component/custom_button.dart';
import 'component/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

 
  final LoginPageController controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Column(
        children: [
          Text(
            "Welcome to Application",
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
              txtController: controller.txtUsername, 
              radius: 10,
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: CustomTextfield(
              myHint: 'Enter your password',
              txtController: controller.txtPassword, 
              radius: 10,
            ),
          ),
          SizedBox(height: 20),
      
          Obx(() {
            if (controller.isLoading.value) {
              return Center(child: CircularProgressIndicator());
            }
            return CustomButton(
              text: 'Login',
              onPressed: () {
                controller.login(); 
              },
            );
          }),
        ],
      ),
    );
  }
}