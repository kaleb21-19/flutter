import 'dart:ffi';

import 'package:app/cores/services/storege_service.dart';
import 'package:app/feature/auth/pages/login.dart';
import 'package:app/feature/bottom%20nav%20bar/pages/bottom_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final StoregeService storegeService = StoregeService.instance;

  @override
  void onInit() {
    initialization();
    super.onInit();
  }

  Future<void> initialization() async {
    await Future.delayed(const Duration(seconds: 3));
    final token = await storegeService.getToken();
    if (token != null) {
      Get.offAll(() => const BottomNavbarPage());
    } else {
      Get.offAll(() => Login());
    }
  }
}
