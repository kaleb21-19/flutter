import 'package:app/utils/constant/colors.dart';
import 'package:app/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TAppBarTheme {
  // ---------------- LIGHT THEME ----------------
  static AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 1,
    backgroundColor: TColors.surface,
    surfaceTintColor: TColors.primary,
    shadowColor: Colors.transparent,
    iconTheme: IconThemeData(color: TColors.textPrimary, size: 24),
    actionsIconTheme: IconThemeData(color: TColors.textPrimary, size: 24),
    titleTextStyle: TTextTheme.lightTextTheme.titleLarge?.copyWith(
      fontWeight: FontWeight.w600,
      color: TColors.textPrimary,
    ),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
    titleSpacing: 16,
    toolbarHeight: 56,
  );

  // ---------------- DARK THEME ----------------
  static AppBarTheme darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 1,
    backgroundColor: TColors.darkSurface,
    surfaceTintColor: TColors.primary,
    shadowColor: Colors.transparent,
    iconTheme: IconThemeData(color: TColors.white, size: 24),
    actionsIconTheme: IconThemeData(color: TColors.white, size: 24),
    titleTextStyle: TTextTheme.darkTextTheme.titleLarge?.copyWith(
      fontWeight: FontWeight.w600,
      color: TColors.white,
    ),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
    titleSpacing: 16,
    toolbarHeight: 56,
  );
}
