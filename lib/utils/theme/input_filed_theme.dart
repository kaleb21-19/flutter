import 'package:app/utils/constant/colors.dart';
import 'package:app/utils/constant/sizes.dart';
import 'package:app/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TInputDecorationTheme {
  // ---------------- LIGHT THEME ----------------
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: TColors.surface,
    contentPadding: EdgeInsets.symmetric(
      vertical: TSizes.inputPaddingVertical,
      horizontal: TSizes.inputPaddingHorizontal,
    ),

    hintStyle: TTextTheme.lightTextTheme.bodyMedium?.copyWith(
      color: TColors.textTertiary,
      fontWeight: FontWeight.w400,
    ),

    labelStyle: TTextTheme.lightTextTheme.bodyMedium?.copyWith(
      color: TColors.textSecondary,
      fontWeight: FontWeight.w500,
    ),

    floatingLabelStyle: TTextTheme.lightTextTheme.bodyMedium?.copyWith(
      color: TColors.primary,
      fontWeight: FontWeight.w600,
    ),

    prefixIconColor: TColors.textSecondary,
    suffixIconColor: TColors.textSecondary,

    errorStyle: TTextTheme.lightTextTheme.bodySmall?.copyWith(
      color: TColors.error,
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      borderSide: BorderSide(color: TColors.borderLight, width: 1.0),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      borderSide: BorderSide(color: TColors.primary, width: 2.0),
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
    fillColor: TColors.darkSurface,

    contentPadding: EdgeInsets.symmetric(
      vertical: TSizes.inputPaddingVertical,
      horizontal: TSizes.inputPaddingHorizontal,
    ),

    hintStyle: TTextTheme.darkTextTheme.bodyMedium?.copyWith(
      color: TColors.gray,
      fontWeight: FontWeight.w400,
    ),

    labelStyle: TTextTheme.darkTextTheme.bodyMedium?.copyWith(
      color: TColors.gray,
      fontWeight: FontWeight.w500,
    ),

    floatingLabelStyle: TTextTheme.darkTextTheme.bodyMedium?.copyWith(
      color: TColors.primary,
      fontWeight: FontWeight.w600,
    ),

    prefixIconColor: TColors.gray,
    suffixIconColor: TColors.gray,

    errorStyle: TTextTheme.darkTextTheme.bodySmall?.copyWith(
      color: TColors.error,
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      borderSide: BorderSide(color: TColors.borderDark, width: 1.0),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
      borderSide: BorderSide(color: TColors.primary, width: 2.0),
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

    helperStyle: TTextTheme.darkTextTheme.bodySmall?.copyWith(
      color: TColors.gray,
    ),

    counterStyle: TTextTheme.darkTextTheme.bodySmall?.copyWith(
      color: TColors.gray,
    ),
  );
}
