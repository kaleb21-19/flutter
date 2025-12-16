import 'package:app/utils/constant/colors.dart';
import 'package:app/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class TFloatingButtonTheme {
  static FloatingActionButtonThemeData lightFloatingActionButtonTheme =
      FloatingActionButtonThemeData(
        backgroundColor: TColors.primary,
        foregroundColor: Colors.white,
        elevation: 6,
        iconSize: 24,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(TSizes.radiusLg),
        ),
        enableFeedback: true,
      );

  static FloatingActionButtonThemeData darkFloatingActionButtonTheme =
      FloatingActionButtonThemeData(
        backgroundColor: TColors.primary,
        foregroundColor: Colors.white,
        elevation: 8,
        iconSize: 24,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(TSizes.radiusLg),
        ),
        enableFeedback: true,
      );
}
