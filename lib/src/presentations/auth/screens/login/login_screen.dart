import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laziness_slayer/src/presentations/custom_widgets/custom_image_view.dart';
import 'package:laziness_slayer/src/utils/app_assets.dart';
import 'package:laziness_slayer/src/utils/enums.dart';
import 'package:laziness_slayer/src/utils/validator_utils.dart';
import '../../../custom_widgets/buttons/custom_elevated_button.dart';
import '../../../custom_widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  // Controllers for TextFields
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Form key for validation
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginScreen({super.key});

  // Dummy login function for now
  void _handleLogin(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      // Simulate successful login
      // In real implementation, use Firebase Authentication here
      // Navigate to another screen after login if necessary
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo above title (placeholder)
              Center(
                child: CustomImageView(
                  imagePath: AppAssets.logoTransparent,
                  imageType: ImageType.assets, 
                  width: 100.w,
                  height: 100.h,
                ),
              ),
              const SizedBox(height: 20),
              
              // Title
              Text("Welcome Back!",
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 10),
              Text("Please log in to continue",
                  style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 40),
              
              // Email Field
              CustomTextField(
                controller: emailController,
                hintText: 'Enter your email',
                keyboardType: TextInputType.emailAddress,
                validator: (value) => ValidatorUtils.validateEmail(value),
              ),
              const SizedBox(height: 20),
              
              // Password Field
              CustomTextField(
                controller: passwordController,
                hintText: 'Enter your password',
                obscureText: true,
                validator: (value) => ValidatorUtils.validatePassword(value),
              ),
              const SizedBox(height: 20),
              
              // Login Button
              CustomElevatedButton(
                label: 'Login',
                onPressed: () => _handleLogin(context),
              ),
              const SizedBox(height: 20),
              
              // Signup Navigation
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup'); // Navigate to Signup screen
                },
                child: const Text("Don't have an account? Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
