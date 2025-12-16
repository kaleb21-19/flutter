import 'package:app/utils/constant/colors.dart';
import 'package:app/utils/constant/sizes.dart';
import 'package:app/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TDialogTheme {
  static DialogThemeData lightDialogTheme = DialogThemeData(
    backgroundColor: TColors.surface,
    elevation: 8,
    shadowColor: Colors.black.withValues(alpha: 0.12),
    surfaceTintColor: TColors.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusLg),
    ),
    titleTextStyle: TTextTheme.lightTextTheme.titleLarge?.copyWith(
      color: TColors.textPrimary,
    ),
    contentTextStyle: TTextTheme.lightTextTheme.bodyMedium?.copyWith(
      color: TColors.textSecondary,
    ),
    actionsPadding: EdgeInsets.symmetric(
      horizontal: TSizes.md,
      vertical: TSizes.sm,
    ),
    insetPadding: TSizes.screenPadding,
    alignment: Alignment.center,
  );

  static DialogThemeData darkDialogTheme = DialogThemeData(
    backgroundColor: TColors.darkSurface,
    elevation: 12,
    shadowColor: Colors.black.withValues(alpha: 0.32),
    surfaceTintColor: TColors.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusLg),
    ),
    titleTextStyle: TTextTheme.darkTextTheme.titleLarge?.copyWith(
      color: TColors.white,
    ),
    contentTextStyle: TTextTheme.darkTextTheme.bodyMedium?.copyWith(
      color: TColors.gray,
    ),
    actionsPadding: EdgeInsets.symmetric(
      horizontal: TSizes.md,
      vertical: TSizes.sm,
    ),
    insetPadding: TSizes.screenPadding,
    alignment: Alignment.center,
  );
}
