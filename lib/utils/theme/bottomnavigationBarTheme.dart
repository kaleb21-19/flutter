import 'package:app/utils/constant/colors.dart';
import 'package:app/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TBottomNavigationBarTheme {
  static BottomNavigationBarThemeData lightBottomNavigationBarTheme =
      BottomNavigationBarThemeData(
        backgroundColor: TColors.surface,
        selectedItemColor: TColors.primary,
        unselectedItemColor: TColors.textSecondary,
        selectedLabelStyle: TTextTheme.lightTextTheme.labelSmall?.copyWith(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TTextTheme.lightTextTheme.labelSmall?.copyWith(
          fontWeight: FontWeight.w400,
        ),
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        enableFeedback: true,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      );

  static BottomNavigationBarThemeData darkBottomNavigationBarTheme =
      BottomNavigationBarThemeData(
        backgroundColor: TColors.darkSurface,
        selectedItemColor: TColors.primary,
        unselectedItemColor: TColors.gray,
        selectedLabelStyle: TTextTheme.darkTextTheme.labelSmall?.copyWith(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TTextTheme.darkTextTheme.labelSmall?.copyWith(
          fontWeight: FontWeight.w400,
        ),
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        enableFeedback: true,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      );
}
