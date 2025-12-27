import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSnackbar {
  static String _cleanMessage(dynamic error) {
    final raw = error?.toString() ?? '';
    return raw.replaceFirst('Exception: ', '').trim();
  }

  static void error({
    String title = 'Error',
    required dynamic message,
    SnackPosition snackPosition = SnackPosition.TOP,
  }) {
    Get.snackbar(
      title,
      _cleanMessage(message),
      backgroundColor: Colors.red,
      colorText: Colors.white,
      snackPosition: snackPosition,
      duration: const Duration(seconds: 4),
    );
  }

  static void success({
    String title = 'Success',
    required String message,
    SnackPosition snackPosition = SnackPosition.TOP,
  }) {
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      snackPosition: snackPosition,
      duration: const Duration(seconds: 3),
    );
  }

  static void info({
    String title = 'Info',
    required String message,
    SnackPosition snackPosition = SnackPosition.TOP,
  }) {
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.blue,
      colorText: Colors.white,
      snackPosition: snackPosition,
      duration: const Duration(seconds: 3),
    );
  }

  static void warning({
    String title = 'Warning',
    required String message,
    SnackPosition snackPosition = SnackPosition.TOP,
  }) {
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.orange,
      colorText: Colors.white,
      snackPosition: snackPosition,
      duration: const Duration(seconds: 2),
    );
  }

  // Generic method for custom colors/positions if needed
  static void show({
    required String title,
    required String message,
    Color backgroundColor = Colors.grey,
    Color colorText = Colors.white,
    SnackPosition snackPosition = SnackPosition.TOP,
    Duration duration = const Duration(seconds: 3),
  }) {
    Get.snackbar(
      title,
      message,
      backgroundColor: backgroundColor,
      colorText: colorText,
      snackPosition: snackPosition,
      duration: duration,
    );
  }
}
