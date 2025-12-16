import 'package:app/utils/constant/colors.dart';
import 'package:app/utils/constant/sizes.dart';
import 'package:app/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TSnackBarTheme {
  static SnackBarThemeData lightSnackBarTheme = SnackBarThemeData(
    backgroundColor: TColors.surface,
    contentTextStyle: TTextTheme.lightTextTheme.bodyMedium?.copyWith(
      color: TColors.textPrimary,
    ),
    actionTextColor: TColors.primary,
    closeIconColor: TColors.textSecondary,
    dismissDirection: DismissDirection.horizontal,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
    ),
    elevation: 4,
    insetPadding: TSizes.screenPadding,
  );

  static SnackBarThemeData darkSnackBarTheme = SnackBarThemeData(
    backgroundColor: TColors.darkSurface,
    contentTextStyle: TTextTheme.darkTextTheme.bodyMedium?.copyWith(
      color: TColors.white,
    ),
    actionTextColor: TColors.primary,
    closeIconColor: TColors.gray,
    dismissDirection: DismissDirection.horizontal,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TSizes.radiusMd),
    ),
    elevation: 6,
    insetPadding: TSizes.screenPadding,
  );
}
