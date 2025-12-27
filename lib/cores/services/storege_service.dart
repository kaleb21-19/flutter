import 'package:app/feature/auth/models/user_models.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StoregeService {
  static final StoregeService instance = StoregeService();
  final storegeService = FlutterSecureStorage();
  final String tokenKey = 'token';
  final String userKey = 'user';
  final String refreshTokenKey = 'refreshToken';
  final String expiresAtKey = 'expiresAt';
  final String userIdKey = 'userId';
  final String nameKey = 'name';
  final String emailKey = 'email';
  final String passwordKey = 'password';
  final String confirmPasswordKey = 'confirmPassword';
  final String userData = "user";

  Future<void> saveToken(String token) async {
    await storegeService.write(key: tokenKey, value: token);
  }

  Future<String?> getToken() async {
    return await storegeService.read(key: tokenKey);
  }

  Future<void> saveUser(UserModels user) async {
    await storegeService.write(key: nameKey, value: user.name);
    await storegeService.write(key: emailKey, value: user.email);
    await storegeService.write(key: passwordKey, value: user.password);
    await storegeService.write(
      key: confirmPasswordKey,
      value: user.confirmPassword,
    );
  }
}
