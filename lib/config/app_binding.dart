import 'package:app/feature/auth/controllers/auth_controller.dart';
import 'package:get/get.dart';
import 'package:app/feature/splash/controllers/splash_controoler.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => AuthController());
  }
}
