import 'package:app/feature/auth/pages/register.dart';
import 'package:app/feature/theme_privew.dart';
import 'package:app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

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
          debugShowCheckedModeBanner: false,
          title: 'MeriSpare',
          theme: ThemeApp.lightTheme,
          darkTheme: ThemeApp.darkTheme,
          themeMode: ThemeMode.system,
          home: ThemePrivew(),
        );
      },
    );
  }
}
