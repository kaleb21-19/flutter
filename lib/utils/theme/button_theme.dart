import 'package:app/utils/constant/colors.dart';
import 'package:app/utils/constant/sizes.dart';
import 'package:app/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TButtonTheme {
  // ---------------- LIGHT THEME ----------------
  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: TColors.primary,
          foregroundColor: Colors.white,
          textStyle: TTextTheme.lightTextTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w600,
          ),
          splashFactory: InkRipple.splashFactory,
          padding: EdgeInsets.symmetric(
            vertical: TSizes.md,
            horizontal: TSizes.md,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TSizes.buttonRadius),
          ),
          minimumSize: Size(88, 32),
        ),
      );

  static OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          textStyle: TTextTheme.lightTextTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w600,
          ),
          side: BorderSide(color: TColors.primary, width: 1.5),
          foregroundColor: TColors.primary,
          backgroundColor: Colors.transparent,
          splashFactory: InkRipple.splashFactory,
          padding: EdgeInsets.symmetric(
            vertical: TSizes.md,
            horizontal: TSizes.md,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TSizes.buttonRadius),
          ),
          minimumSize: Size(88, 32),
        ),
      );

  static TextButtonThemeData lightTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: TTextTheme.lightTextTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w600,
      ),
      foregroundColor: TColors.primary,
      backgroundColor: Colors.transparent,
      splashFactory: InkRipple.splashFactory,
      padding: EdgeInsets.symmetric(vertical: TSizes.md, horizontal: TSizes.md),
      minimumSize: Size(88, TSizes.md),
    ),
  );

  // ---------------- DARK THEME ----------------
  static ElevatedButtonThemeData darkElevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: TColors.primary,
          foregroundColor: Colors.white,
          textStyle: TTextTheme.darkTextTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w600,
          ),
          splashFactory: InkRipple.splashFactory,
          padding: EdgeInsets.symmetric(
            vertical: TSizes.md,
            horizontal: TSizes.md,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TSizes.buttonRadius),
          ),
          minimumSize: Size(88, 32),
        ),
      );

  static OutlinedButtonThemeData darkOutlinedButtonTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          textStyle: TTextTheme.darkTextTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w600,
          ),
          side: BorderSide(color: TColors.primary, width: 1.5),
          foregroundColor: TColors.primary,
          backgroundColor: Colors.transparent,
          splashFactory: InkRipple.splashFactory,
          padding: EdgeInsets.symmetric(
            vertical: TSizes.md,
            horizontal: TSizes.md,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TSizes.buttonRadius),
          ),
          minimumSize: Size(88, 32),
        ),
      );

  static TextButtonThemeData darkTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: TTextTheme.darkTextTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w600,
      ),
      foregroundColor: TColors.primary,
      backgroundColor: Colors.transparent,
      splashFactory: InkRipple.splashFactory,
      padding: EdgeInsets.symmetric(vertical: TSizes.md, horizontal: TSizes.md),
      minimumSize: Size(88, TSizes.md),
    ),
  );
}
