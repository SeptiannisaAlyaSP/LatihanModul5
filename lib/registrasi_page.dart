import 'package:flutter/material.dart';
import 'package:flutter_application_1/account_controller.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  final AccountController _accountController = Get.put(AccountController());

  // TextEditingController for each text form field
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Registration Form'),
            // Text form fields for user input
            TextFormField(
              controller: userIdController,
              decoration: InputDecoration(labelText: 'User ID'),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            ElevatedButton(
              onPressed: () async {
                // Get user input from text form fields
                Map<String, dynamic> userData = {
                  'userId': userIdController.text,
                  'email': emailController.text,
                  'password': passwordController.text,
                  'name': nameController.text,
                };

                // Call the createAccount method in AccountController
                await _accountController.createAccount(userData);
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
