import 'package:app/feature/auth/controllers/auth_controller.dart';
import 'package:app/feature/auth/pages/register.dart';
import 'package:app/feature/home/pages/home_page.dart';
import 'package:app/utils/constant/colors.dart';
import 'package:app/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find();
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
                  "Login",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.hXs),
                //email
                Text(
                  "Email",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: TSizes.hXs),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: authController.emailController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                  ),
                ),
                SizedBox(height: TSizes.sm),
                //password
                Text(
                  "Password",
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
                SizedBox(height: TSizes.spaceBetweenSections),
                ElevatedButton(
                  onPressed: () {
                    authController.login();
                  },
                  child: const Text("Login"),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => const Register());
                      },
                      child: Text(
                        "Register",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: TColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: TSizes.spaceBetweenSections),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
