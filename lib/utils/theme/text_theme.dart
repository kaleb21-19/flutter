import 'package:app/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TTextTheme {
  // ---------------- LIGHT THEME ----------------
  static TextTheme lightTextTheme = TextTheme(
    // Display — Hero Titles
    displayLarge: TextStyle(
      fontSize: 36.sp,
      fontWeight: FontWeight.w800,
      color: TColors.textPrimary,
      height: 1.15,
    ),
    displayMedium: TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.w700,
      color: TColors.textPrimary,
      height: 1.2,
    ),

    // Headline — Page Headers
    headlineLarge: TextStyle(
      fontSize: 26.sp,
      fontWeight: FontWeight.w700,
      color: TColors.textPrimary,
      height: 1.25,
    ),
    headlineMedium: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.w600,
      color: TColors.textPrimary,
      height: 1.3,
    ),
    headlineSmall: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: TColors.textPrimary,
      height: 1.35,
    ),

    // Titles — AppBar, Cards
    titleLarge: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w700,
      color: TColors.textPrimary,
      height: 1.4,
    ),
    titleMedium: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: TColors.textPrimary,
      height: 1.45,
    ),
    titleSmall: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: TColors.textPrimary,
      height: 1.5,
    ),

    // Body — Readable Content
    bodyLarge: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: TColors.textSecondary,
      height: 1.6,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: TColors.textSecondary,
      height: 1.5,
    ),
    bodySmall: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: TColors.textTertiary,
      height: 1.4,
    ),

    // Labels — Buttons, Chips, Badges
    labelLarge: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: TColors.textPrimary,
      letterSpacing: 0.1,
      height: 1.2,
    ),
    labelMedium: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      color: TColors.textSecondary,
      letterSpacing: 0.1,
      height: 1.25,
    ),
    labelSmall: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.w500,
      color: TColors.textSecondary,
      letterSpacing: 0.1,
      height: 1.3,
    ),
  );

  // ---------------- DARK THEME ----------------
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 36.sp,
      fontWeight: FontWeight.w800,
      color: TColors.white,
      height: 1.15,
    ),
    displayMedium: TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.w700,
      color: TColors.white,
      height: 1.2,
    ),

    headlineLarge: TextStyle(
      fontSize: 26.sp,
      fontWeight: FontWeight.w700,
      color: TColors.white,
      height: 1.25,
    ),
    headlineMedium: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.w600,
      color: TColors.white,
      height: 1.3,
    ),
    headlineSmall: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: TColors.white,
      height: 1.35,
    ),

    titleLarge: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w700,
      color: TColors.white,
      height: 1.4,
    ),
    titleMedium: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: TColors.white,
      height: 1.45,
    ),
    titleSmall: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: TColors.gray,
      height: 1.5,
    ),

    bodyLarge: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: TColors.gray,
      height: 1.6,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: TColors.gray,
      height: 1.5,
    ),
    bodySmall: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: TColors.gray,
      height: 1.4,
    ),

    labelLarge: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: TColors.white,
      letterSpacing: 0.1,
      height: 1.2,
    ),
    labelMedium: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      color: TColors.gray,
      letterSpacing: 0.1,
      height: 1.25,
    ),
    labelSmall: TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.w500,
      color: TColors.gray,
      letterSpacing: 0.1,
      height: 1.3,
    ),
  );
}
