import 'package:flutter/foundation.dart';

class UserModels {
  final String name;
  final String email;
  final String password;
  final String confirmPassword;

  UserModels({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  factory UserModels.fromJson(Map<String, dynamic> json) {
    return UserModels(
      name: json['id'].toString(),
      email: json['email'].toString(),
      password: json['password'].toString(),
      confirmPassword: json['password_confirmation'].toString(),
    );
  }

  Map<String, dynamic> tojson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': confirmPassword,
    };
  }
}
