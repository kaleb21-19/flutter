import 'package:flutter/material.dart';
import 'package:app/utils/constant/colors.dart';
import 'package:app/utils/constant/sizes.dart';
import 'package:app/utils/theme/text_theme.dart';

class TInputDecorationTheme {
  // ---------------- LIGHT THEME ----------------
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: TColors.surface, // White surface for light theme
    contentPadding: EdgeInsets.symmetric(
      vertical: TSizes.inputPaddingVertical,
      horizontal: TSizes.inputPaddingHorizontal,
    ),

    // Text styles
    hintStyle: TTextTheme.lightTextTheme.bodyMedium?.copyWith(
      color: TColors.textTertiary, // Light gray hint
      fontWeight: FontWeight.w400,
    ),
    labelStyle: TTextTheme.lightTextTheme.bodyMedium?.copyWith(
      color: TColors.textSecondary, // Neutral label
      fontWeight: FontWeight.w500,
    ),
    floatingLabelStyle: TTextTheme.lightTextTheme.bodyMedium?.copyWith(
      color: TColors.primary, // Brand color for floating label
      fontWeight: FontWeight.bold,
    ),

    // Icons
    prefixIconColor: TColors.textSecondary,
    suffixIconColor: TColors.textSecondary,

    // Error
    errorStyle: TTextTheme.lightTextTheme.bodySmall?.copyWith(
      color: TColors.error,
    ),

    // Borders
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      borderSide: BorderSide(color: TColors.borderLight, width: 1.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      borderSide: BorderSide(color: TColors.primary, width: 2.0), // Brand focus
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      borderSide: BorderSide(color: TColors.error, width: 1.5),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      borderSide: BorderSide(color: TColors.error, width: 2.0),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      borderSide: BorderSide(color: TColors.lightGray, width: 1.0),
    ),

    // Helper & Counter
    helperStyle: TTextTheme.lightTextTheme.bodySmall?.copyWith(
      color: TColors.textTertiary,
    ),
    counterStyle: TTextTheme.lightTextTheme.bodySmall?.copyWith(
      color: TColors.textTertiary,
    ),
  );

  // ---------------- DARK THEME ----------------
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: TColors.darkSurface, // Dark gray surface
    contentPadding: EdgeInsets.symmetric(
      vertical: TSizes.inputPaddingVertical,
      horizontal: TSizes.inputPaddingHorizontal,
    ),

    // Text styles
    hintStyle: TTextTheme.darkTextTheme.bodyMedium?.copyWith(
      color: TColors.gray, // Soft gray hint
      fontWeight: FontWeight.w400,
    ),
    labelStyle: TTextTheme.darkTextTheme.bodyMedium?.copyWith(
      color: TColors.gray, // Neutral label
      fontWeight: FontWeight.w500,
    ),
    floatingLabelStyle: TTextTheme.darkTextTheme.bodyMedium?.copyWith(
      color: TColors.primary, // Brand green for floating label
      fontWeight: FontWeight.bold,
    ),

    // Icons
    prefixIconColor: TColors.gray,
    suffixIconColor: TColors.gray,

    // Error
    errorStyle: TTextTheme.darkTextTheme.bodySmall?.copyWith(
      color: TColors.error,
    ),

    // Borders
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      borderSide: BorderSide(color: TColors.borderDark, width: 1.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      borderSide: BorderSide(color: TColors.primary, width: 2.0), // Brand focus
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      borderSide: BorderSide(color: TColors.error, width: 1.5),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      borderSide: BorderSide(color: TColors.error, width: 2.0),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      borderSide: BorderSide(color: TColors.darkGray, width: 1.0),
    ),

    // Helper & Counter
    helperStyle: TTextTheme.darkTextTheme.bodySmall?.copyWith(
      color: TColors.gray,
    ),
    counterStyle: TTextTheme.darkTextTheme.bodySmall?.copyWith(
      color: TColors.gray,
    ),
  );
}
