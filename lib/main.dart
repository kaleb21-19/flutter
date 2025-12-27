import 'package:app/config/app_binding.dart';
import 'package:app/feature/auth/pages/register.dart';
import 'package:app/feature/profile/pages/profile_page.dart';
import 'package:app/feature/splash/pages/splash_screen.dart';
import 'package:app/utils/theme/theme.dart';
import 'package:app/utils/upgrade.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:upgrader/upgrader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        WidgetsFlutterBinding.ensureInitialized();
        return GetMaterialApp(
          initialBinding: AppBinding(),
          debugShowCheckedModeBanner: false,
          title: 'MeriSpare',
          theme: ThemeApp.lightTheme,
          darkTheme: ThemeApp.darkTheme,
          themeMode: ThemeMode.system,
          home: MyUpgradeAlert(
            showIgnore: false,
            showLater: false,
            barrierDismissible: true,
            showReleaseNotes: true,
            upgrader: Upgrader(
              minAppVersion: '1.2.1',
              debugDisplayAlways: true,
              debugLogging: true,
            ),
            child: SplashScreen(),
          ),
        );
      },
    );
  }
}
