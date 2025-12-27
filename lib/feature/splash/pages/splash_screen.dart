import 'package:app/feature/splash/controllers/splash_controoler.dart';
import 'package:app/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.primary,
      body: Center(
        child: Text(
          'Kaleb',
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(color: TColors.white),
        ),
      ),
    );
  }
}
