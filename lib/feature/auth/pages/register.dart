import 'package:app/feature/auth/controllers/auth_controller.dart';
import 'package:app/feature/auth/pages/login.dart';
import 'package:app/feature/home/pages/home_page.dart';
import 'package:app/utils/constant/colors.dart';
import 'package:app/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.put(AuthController());
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF10B981), Color(0xFF3B82F6)],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: TSizes.screenPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 50),
                Text(
                  "Register",
                  style: Theme.of(
                    context,
                  ).textTheme.headlineMedium?.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBetweenSections),
                //name
                Text(
                  'Name',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: TSizes.hXs),
                TextFormField(
                  controller: authController.nameController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your name',
                  ),
                ),
                SizedBox(height: TSizes.sm),
                //email
                Text(
                  'Email',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: TSizes.hXs),
                TextFormField(
                  controller: authController.emailController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                  ),
                ),
                SizedBox(height: TSizes.sm),
                //password
                Text(
                  'Password',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: TSizes.hXs),
                TextFormField(
                  obscureText: true,
                  controller: authController.passwordController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                  ),
                ),
                SizedBox(height: TSizes.sm),
                //confirm password
                Text(
                  'Confirm Password',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: TSizes.hXs),
                TextFormField(
                  controller: authController.confirmPasswordController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your confirm password',
                  ),
                ),
                SizedBox(height: TSizes.spaceBetweenSections),

                ElevatedButton(
                  onPressed: () {
                    authController.register();
                  },
                  child: const Text("Register"),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => const Login());
                      },
                      child: Text(
                        "Login",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: TColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
