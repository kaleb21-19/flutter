import 'package:app/utils/constant/colors.dart';
import 'package:app/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class TCardTheme {
  // ---------------- LIGHT THEME ----------------
  static CardThemeData lightCardTheme = CardThemeData(
    elevation: 2,
    shadowColor: Colors.black.withValues(alpha: 0.08),
    surfaceTintColor: TColors.primary,
    color: TColors.surface,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      side: BorderSide(color: TColors.borderLight, width: 1),
    ),
    margin: EdgeInsets.all(TSizes.sm),
    clipBehavior: Clip.antiAlias,
  );

  // ---------------- DARK THEME ----------------
  static CardThemeData darkCardTheme = CardThemeData(
    elevation: 4,
    shadowColor: Colors.black.withValues(alpha: 0.24),
    surfaceTintColor: TColors.primary,
    color: TColors.darkSurface,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      side: BorderSide(color: TColors.borderDark, width: 1),
    ),
    margin: EdgeInsets.all(TSizes.sm),
    clipBehavior: Clip.antiAlias,
  );
}
