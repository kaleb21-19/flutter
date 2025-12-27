import 'package:app/config/api_clinet.dart';
import 'package:app/cores/services/api_services.dart';
import 'package:app/feature/auth/models/user_models.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class AuthServices {
  final ApiServices _apiServices = ApiServices.instance;
  final ApiClinet _apiClinet = ApiClinet.instance;

  Future<Map<String, dynamic>> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    final user = UserModels(
      name: name,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    );

    print('body${user.tojson()}');
    final response = await _apiServices.post(
      _apiClinet.registerEndpoint,
      data: user.tojson(),
    );
    if (response.data['status'] == 'success') {
      return response.data;
    } else {
      throw Exception('Failed to register');
    }
  }

  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    final response = await _apiServices.post(
      _apiClinet.loginEndpoint,
      data: {'email': email, 'password': password},
    );
    if (response.data['status'] == 'success') {
      return response.data;
    } else {
      throw Exception('Failed to login');
    }
  }
}
