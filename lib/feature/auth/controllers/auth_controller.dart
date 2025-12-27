import 'package:app/cores/services/api_services.dart';
import 'package:app/cores/services/storege_service.dart';
import 'package:app/cores/utils/app_snack_bar.dart';
import 'package:app/feature/auth/models/user_models.dart';
import 'package:app/feature/auth/services/auth_services.dart';
import 'package:app/feature/bottom%20nav%20bar/pages/bottom_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final ApiServices apiServices = ApiServices.instance;
  final StoregeService storegeService = StoregeService.instance;
  final AuthServices authServices = AuthServices();

  Future<void> register() async {
    final response = await authServices.register(
      name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
      confirmPassword: confirmPasswordController.text,
    );
    print("response: $response");
    print("response key status: ${response['status']}");
    print("response key message: ${response['message']}");
    print("response key user: ${response['data']}");

    if (response['status'] == 'success') {
      final token = response['token'];
      final user = response['data'];
      await storegeService.saveToken(token);
      await storegeService.saveUser(UserModels.fromJson(user));
      Get.to(() => const BottomNavbarPage());
      AppSnackbar.success(message: response['message']);
    } else {
      AppSnackbar.error(message: response['message']);
    }
  }

  Future<void> login() async {
    final response = await authServices.login(
      email: emailController.text,
      password: passwordController.text,
    );
    if (response['status'] == 'success') {
      final token = response['token'];
      final user = response['data'];
      await storegeService.saveToken(token);
      await storegeService.saveUser(UserModels.fromJson(user));
      Get.to(() => const BottomNavbarPage());
      AppSnackbar.success(message: response['message']);
    } else {
      AppSnackbar.error(message: response['message']);
    }
  }
}
