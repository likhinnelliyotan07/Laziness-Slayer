// pages/login_page.dart
import 'package:flutter/material.dart';
import 'package:laziness_slayer/src/utils/validator_utils.dart';

import '../../../custom_widgets/buttons/custom_elevated_button.dart';
import '../../../custom_widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Back!",
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 10),
            Text("Please log in to continue",
                style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 40),
            CustomTextField(
              controller: emailController,
              hintText: 'Enter your email',
              keyboardType: TextInputType.emailAddress,
              validator: (value) => ValidatorUtils.validateEmail(value),
            ),
            CustomTextField(
              controller: passwordController,
              hintText: 'Enter your password',
              obscureText: true,
              validator: (value) => ValidatorUtils.validatePassword(value),
            ),
            const SizedBox(height: 20),
            CustomElevatedButton(
              label: 'Login',
              onPressed: () {
                // Handle login logic (Firebase Authentication)
              },
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/signup'); // Navigate to Signup screen
              },
              child: const Text("Don't have an account? Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
