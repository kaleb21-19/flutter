import 'package:flutter/material.dart';

class TColors {
  // ---------------- PRIMARY BRAND COLORS ----------------
  static const Color primary = Color(0xFFF57C00);
  static const Color secondary = Color(0xFFBF360C);
  static const Color accent = Color(0xFFFF6D00);

  // ---------------- FUNCTIONAL / SEMANTIC COLORS ----------------
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFFBC02D);
  static const Color error = Color(0xFFD32F2F);
  static const Color info = Color(0xFF1976D2);

  // ---------------- GRAYSCALE / NEUTRALS ----------------
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);

  static const Color dark = Color(0xFF121212);
  static const Color darkGray = Color(0xFF333333);
  static const Color gray = Color(0xFF757575);
  static const Color mediumGray = Color(0xFFBDBDBD);
  static const Color lightGray = Color(0xFFEEEEEE);
  static const Color ultraLightGray = Color(0xFFF5F5F5);

  // ---------------- TEXT COLORS ----------------
  static const Color textPrimary = Color(0xFF1D1F23);
  static const Color textSecondary = Color(0xFF5A5A5A);
  static const Color textTertiary = Color(0xFF9E9E9E);
  static const Color textLight = Colors.white;

  // ---------------- LIGHT THEME SURFACE COLORS ----------------
  static const Color background = Color(0xFFF5F5F5);
  static const Color surface = Color(0xFFFFFFFF);

  // Input backgrounds
  static const Color inputLight = Color(0xFFF7F7F7);

  // Borders
  static const Color borderLight = Color(0xFFE0E0E0);

  // Dividers
  static const Color dividerLight = Color(0xFFE0E0E0);

  // ---------------- DARK THEME SURFACE COLORS ----------------
  static const Color darkBackground = Color(0xFF1A1A1A);
  static const Color darkSurface = Color(0xFF2C2C2C);

  // Input backgrounds
  static const Color inputDark = Color(0xFF2A2A2A);

  // Borders
  static const Color borderDark = Color(0xFF3A3A3A);

  // Dividers
  static const Color dividerDark = Color(0xFF3A3A3A);

  // ---------------- ICON COLORS ----------------
  static const Color iconLight = Color(0xFF5A5A5A);
  static const Color iconDark = Color(0xFFCCCCCC);

  // ---------------- OVERLAY COLORS ----------------
  static const Color overlayDark = Color(0x99000000); // Black 60%
  static const Color overlayLight = Color(0x33000000); // Black 20%

  // ---------------- GRADIENTS ----------------
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, secondary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const LinearGradient accentGradient = LinearGradient(
    colors: [secondary, accent],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const LinearGradient successGradient = LinearGradient(
    colors: [success, success],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  // ---------------- SHADOWS ----------------
  static List<BoxShadow> lightShadow = [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.04),
      blurRadius: 10,
      offset: const Offset(0, 4),
    ),
  ];

  static List<BoxShadow> darkShadow = [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.4),
      blurRadius: 12,
      offset: const Offset(0, 6),
    ),
  ];
}
