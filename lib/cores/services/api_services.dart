import 'dart:convert';

import 'package:app/config/api_clinet.dart';
import 'package:app/cores/services/storege_service.dart';
import 'package:dio/dio.dart';

class ApiServices {
  static final ApiServices instance = ApiServices();
  StoregeService storegeService = StoregeService.instance;

  late final Dio _dio;
  Dio get client => _dio;

  ApiServices() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiClinet.instance.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await storegeService.getToken();
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          handler.next(options);
        },
        onResponse: (response, handler) {
          handler.next(response);
        },
        onError: (error, handler) {
          print(
            "ERROR: ${error.response?.statusCode} ${error.requestOptions.path}",
          );
          handler.next(error);
        },
      ),
    );
  }

  Future<Response> get(String endPoint, {Map<String, dynamic>? query}) {
    return _dio.get(endPoint, queryParameters: query);
  }

  Future<Response> post(String endPoint, {Map<String, dynamic>? data}) {
    return _dio.post(endPoint, data: data);
  }
}
